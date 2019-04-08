<?php
   
    class Images {
    
        private $_db;
        public $_n_img;
        public $_msg_error;
        private $_images;
        private $_new_mark;
        
        function __construct($db = NULL)
        {
            if($db !== NULL) {
                $this->_db = $db;
            } else {
                $this->_db = $GLOBALS['DB'];
            }
        }


        //Compte le nombre d'images pour un article
        public function imagesCount($id)
        {
            $req = $this->_db->prepare('SELECT count(id_images) AS nombre FROM images
                                        WHERE id_articles=:id;');
            $req->bindParam(':id', $id);
            $req->execute();
            $result = $req->fetch();
            return $result['nombre'];
        }


        //Recupère toutes les images liées à un article
        public function imagesAll($id) 
        {
            $req = $this->_db->prepare('SELECT mark, url_img, id_images FROM images
                                        WHERE id_articles = :id
                                        ORDER BY mark;');
            $req->bindParam(':id', $id);
            $req->execute();
            return $req->fetchAll();
        }


        //UPDATE MARK d'une image dans la $db
        public function updateImage($idImg, $action, $idArt = NULL)
        {
            if($action == 'begin') 
            {
                $req = $this->_db->prepare('UPDATE images
                                SET mark = 0
                                WHERE id_images = :id;');
                $req->execute(array(':id' => $idImg));
                return true;
            } 
            elseif($action == 'less') 
            {
                $req = $this->_db->prepare('UPDATE images
                                SET mark = (mark - 2)
                                WHERE id_images = :id;');
                $req->execute(array(':id' => $idImg));
                return true;
            } 
            elseif ($action == 'more') 
            {
                $req = $this->_db->prepare('UPDATE images
                                SET mark = (mark + 2)
                                WHERE id_images = :id;');
                $req->execute(array(':id' => $idImg));
                return true;
            } 
            elseif ($action == 'end') 
            {
                $n_img = $this->imagesCount($idArt)+1;
                $req = $this->_db->prepare('UPDATE images
                                SET mark = :n_img
                                WHERE id_images = :id;');
                $req->execute(array(':id' => $idImg, ':n_img' => $n_img));
                return true;
            } 
            else 
            {
                return false;
            }
        }


        //Re-Organisation des Marks
        public function imagesOrga($idArt) 
        {
            $this->_n_img = $this->imagesCount($idArt);
            $this->_images = $this->imagesAll($idArt);
            
            for($i = 0; $i < $this->_n_img; $i++) {

                $this->_new_mark = $i+1;

                if($this->_images[$i]['mark'] != $this->_new_mark) 
                {
                    $req = $this->_db->prepare('UPDATE images
                                SET mark=:new_mark
                                WHERE id_images= :id_images;');
                    $req->execute(array(
                        ':id_images' => $this->_images[$i]['id_images'], 
                        ':new_mark' => $this->_new_mark
                    ));
                }
            }
            return true;
        }


        //VERIFIER et IMPORTER une ou plusieurs images dans dans le répertoire img.
        public function uploadImage($url_art, $FILES) 
        {
            $this->_msg_error = "";
            $img_to_db = array();

            //Créer le repertoire pour les photos s'il n'existe pas
            if(!is_dir($url_art)) {
                $old_mask = umask(0);
                mkdir($url_art, 0777, true);
                umask($old_mask);
            }

            //Uplaod les images 
            $this->_n_img = count($FILES["fileToUpload"]["name"]);
            for ($i=0; $i < $this->_n_img; $i++) { 
                
                $uploadOk = 1;  
                $target_file = $url_art . basename($FILES["fileToUpload"]["name"][$i]);
                $img_name = $FILES["fileToUpload"]["name"][$i];
                $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
                
                //Verifie si l'image est bien une image
                $check = getimagesize($FILES["fileToUpload"]["tmp_name"][$i]);
                if($check !== false) {
                    $uploadOk = 1;
                } else {
                    $this->_msg_error .= "Ce fichier n'est pas une image -- ";
                    $uploadOk = 0;
                }
                //Verifie l'image n'existe pas déjà
                if (file_exists($target_file)) {
                    $this->_msg_error .= "Ce fichier existe déjà -- ";
                    $uploadOk = 0;
                }
                //Verifie la taille de l'image
                if ($FILES["fileToUpload"]["size"][$i] > 2000000) {
                    $this->_msg_error .= "Ce fichier est trop lourd -- ";
                    $uploadOk = 0;
                }
                //Autorise certains type de fichiers
                if($imageFileType != "jpg" && $imageFileType != "jpeg" && $imageFileType != "png") {
                    $this->_msg_error .=  "Seul les fichier JPG/JPEG et PNG sont acceptés -- ";
                    $uploadOk = 0;
                }
                //Verifie les caractères spéciaux dans le nom de l'image
                if (preg_match('/[\'"^£$€%&*()}{@#~?><>,|=+¬]/', $img_name)) {                    
                    $this->_msg_error .= "Ce nom de fichier est incorrect -- ";
                    $uploadOk = 0;
                }
                //Si tout est ok on charge l'image
                if ($uploadOk == 0) {
                    $this->_msg_error .= "Echec du téléchargement : ".$img_name."<br>";
                } else {
                    if (move_uploaded_file($FILES["fileToUpload"]["tmp_name"][$i], $target_file)) {
                        //Incrémente la variable $img_to_db qui sera renvoyé en cas de success.
                        $img_to_db += array(
                            $i => array(
                                'name' => $img_name,
                                'url_img' => $url_art,
                                'mark' => ($i+1)
                            ));
                    } else {
                        $this->_msg_error .= "Imposible de télécharger le fichier : ".$img_name."<br>";
                    }
                }
            }
            return $img_to_db;
        }


        //INSERT les images dans la $db
        public function insertImg($idArt, $img_to_db) 
        {
            $this->_n_img = count($img_to_db);
            for ($i=0; $i < $this->_n_img; $i++) {
                $req = $this->_db->prepare('INSERT INTO images
                                            (name, url_img, id_articles, mark) 
                                            VALUES 
                                            (:name, :url_img, :id_articles, :mark);');
                $req->execute(array(
                    ':name' => $img_to_db[$i]['name'],
                    ':url_img' => $img_to_db[$i]['url_img'].$img_to_db[$i]['name'],
                    ':id_articles' => $idArt,
                    ':mark' => $img_to_db[$i]['mark']
                ));
            }
            return true;
        }
    } 

?>