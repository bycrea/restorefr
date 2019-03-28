<?php

    class Remove {
        private $_db;
        private $_fetch;

        function __construct($db = NULL)
        {
            if($db !== NULL) {
                $this->_db = $db;
            } else {
                $this->_db = $GLOBALS['DB'];
            }
        }

        //Fonction suppression d'un article et de toutes ses images
        public function deleteFullArt($id) 
        {
            $req = $this->_db->prepare('SELECT url_article FROM articles
                                        WHERE id_articles = :id;');
            $req->bindParam(':id', $id);
            $req->execute();
            $this->_fetch = $req->fetch();

            $req = $this->_db->prepare('DELETE FROM images
                                        WHERE id_articles = :id;
                                        DELETE FROM articles
                                        WHERE id_articles = :id;');
            $req->bindParam(':id', $id);
            $req->execute();

            return $this->deleteDir($this->_fetch[0]);
        }

        //Fonction suppression de l'image d'un article
        public function deleteImage($id) 
        {
            //Recherche l'url (dossier) de 'limage concerné
            $req = $this->_db->prepare('SELECT url_img FROM images
                                        WHERE id_images = :id;');
            $req->bindParam(':id', $id);
            $req->execute();
            $this->_fetch = $req->fetch();

            //Supprime l'image de la base de donnée
            $req = $this->_db->prepare('DELETE FROM images
                                        WHERE id_images = :id;');
            $req->bindParam(':id', $id);
            $req->execute();

            //Supprime l'image du dossier : img/url_img
            return $this->deleteFile($this->_fetch['url_img']);
        }

        //Fonction de suppression pour une image
        public function deleteFile($filePath) 
        {
            if(is_file($filePath)) {
                return unlink($filePath);
            } else {
                return false;
            }
            
        }

        //Fonction de suppression pour un dossiers & tous ses fichiers
        public function deleteDir($dirPath) 
        {
            if (!is_dir($dirPath)) {
                return false;
            }
            if (substr($dirPath, strlen($dirPath) - 1, 1) != '/') {
                $dirPath .= '/';
            }
            $files = glob($dirPath . '*', GLOB_MARK);
            foreach ($files as $file) {
                if (is_dir($file)) {
                    $this->deleteDir($file);
                } else {
                    unlink($file);
                }
            }
            return rmdir($dirPath);
        }
    }

?>