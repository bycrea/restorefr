<?php

    // drop-down menu page creation d'article
    $catg_crea = '';
    foreach($catgAll as $element) {
        $catg_crea .='
        <option value="'.$element['id_catg'].'">'.$element['categorie'].'</option>';
    }

    //Initialisation des variables
    $msg_error = ""; //Concatène les messages d'erreurs (ou succès images)
    //$img_to_db = array(); //Enregistre toutes les données images pour la requète $db
    $titre_val = $descrpt_val = $article_val = $url_art_val = ""; //Mémorise les champs 'form' en cas d'échecs

    //Si $_POST n'est pas vide
    if(isset($_POST['send'])) {
        //Path pour les images à venir
        $url_art = 'img/'.$_POST['url_art'].'/';

        //On upload les images dans le dossier image => 'url_art'
        $upload = new Images($db);
        $img_to_db = $upload->uploadImage($url_art,$_FILES);

        //Compare le N° d'images sélectionnées et le N° uplaodés
        if($upload->_n_img == count($img_to_db)) {
            //Si tout est OK
            $msg_error = "Images téléchargées.<br>";

            //On injecte les données article et images dans la $db
            $article = new Article($db);
            $lastId = $article->insertArticle($_POST, $img_to_db);
            
            header('location: index.php?p=article&id='.$lastId);
        } else {
            //Sinon on efface toutes les photos (même les valides)
            $msg_error = $upload->_msg_error;
            $msg_error .= "Veuillez vérifier vos images et recommencer.<br>";
            $rmfile = new Remove($db);
            $rmfile->deleteDir($url_art);

            //On pré-rempli le formulaire avec les valeurs $_POST envoyé précédement
            $titre_val = $_POST['titre'];
            $descrpt_val = $_POST['descrpt'];
            $article_val = $_POST['article'];
            $url_art_val = $_POST['url_art'];

            //Re-selection de la catégorie choisi en $_POST en rajoutant un 'selected' sur celle-ci
            $catg_crea = "";
            foreach($catgAll as $element) {
                if($_POST['categorie'] == $element['id_catg']) {
                    $catg_crea .='
                    <option selected value="'.$element['id_catg'].'">'.$element['categorie'].'</option>';
                } else {
                    $catg_crea .='
                    <option value="'.$element['id_catg'].'">'.$element['categorie'].'</option>';
                }
            }
        }
    }
?>