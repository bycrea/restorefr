<?php

    //Injeste $_get['id'] dans une variable
    $id = $_GET['id'];
    //Initialise la variable $msg_error
    $msg_error = "";

    //Recpère les informations de article
    $article = new Article();
    $artId = $article->articleId($id);

    //Verifie que l'article existe
    if(empty($artId)) {
        header('location: index.php?p=404');
    }

    //Recpère les images de article
    $images = new Images();
    $n_img = $images->imagesCount($id);
    $imgAll = $images->imagesAll($id);


    //Si $_POST['delete'] reçois une ID on supprime l'image concerné
    if(isset($_POST['delete'])) {
        //REMOVE IMAGE
        $remove = new Remove();
        $remove->deleteImage($_POST['delete']);

        //On ré-organise les marks des images dans l'ordre croissant
        while(!$images->imagesOrga($id));
        
        unset($_POST);
        header('location: index.php?p=editimages&id='.$id);
    }

    //Si $_POST['sub_begin'] est déclaré
    if(isset($_POST['sub_begin'])) {
        //Décrémente la Mark de l'image séléctionné 
        $idImg = $_POST['sub_begin'];
        while(!$images->updateImage($idImg, 'begin'));
        //Ré-organise les images par ordre croissant
        while(!$images->imagesOrga($id));
        
        header('location: index.php?p=editimages&id='.$id);
    }
    //Si $_POST['sub_less'] est déclaré
    if(isset($_POST['sub_less'])) {
        //Décrémente la Mark de l'image séléctionné 
        $idImg = $_POST['sub_less'];
        while(!$images->updateImage($idImg, 'less'));
        //Ré-organise les images par ordre croissant
        while(!$images->imagesOrga($id));
        
        header('location: index.php?p=editimages&id='.$id);
    }
    //Si $_POST['sub_more'] est déclaré
    if(isset($_POST['sub_more'])) {
        //Incrément la Mark de l'image séléctionné 
        $idImg = $_POST['sub_more'];
        while(!$images->updateImage($idImg, 'more'));
        //Ré-organise les images par ordre croissant
        while(!$images->imagesOrga($id));

        header('location: index.php?p=editimages&id='.$id);
    }
    //Si $_POST['sub_end'] est déclaré
    if(isset($_POST['sub_end'])) {
        //Incrément la Mark de l'image séléctionné 
        $idImg = $_POST['sub_end'];
        while(!$images->updateImage($idImg, 'end', $id));
        //Ré-organise les images par ordre croissant
        while(!$images->imagesOrga($id));

        header('location: index.php?p=editimages&id='.$id);
    }


    //Si $_POST['ajout_img'] est déclaré
    if(isset($_POST['ajout_img'])) {
        //On upload les images dans le dossier image => 'url_art'
        $upload = new Images();
        $img_to_db = $upload->uploadImage($artId['url_article'],$_FILES);
        
        if($upload->_n_img == count($img_to_db)) {
            //Si tout est OK
            $msg_error = "Images téléchargées.<br>";

            //On injecte les images dans la $db
            $images->insertImg($id, $img_to_db);
            $images->imagesOrga($id);

            header('location: index.php?p=editimages&id='.$id);
        } else {
            //Sinon on efface toutes les nouvelles photos (même les valides)
            $msg_error .= $upload->_msg_error;
            $msg_error .= "Veuillez vérifier vos images et recommencer.<br>";
            
            $rmfile = new Remove();
            foreach($img_to_db as $image) {
                $url_file = $image['url_img'].$image['name'];
                $rmfile->deleteFile($url_file);
            }
        }
    }

?>