<?php

    //Recpère les informations de article
    $article = new Article();
    $artId = $article->articleId($_GET['id']);

    //Si l'artcile n'existe pas retour page 404
    if(empty($artId)) {
        header('location: index.php?p=404');
    }
    
    //Recpère les images de article
    $imgId = $article->imagesId($_GET['id']);

    //REMOVE ARTICLE
    //Si $_POST['delete'] recois une ID on supprime l'article concerné
    if(isset($_POST['delete'])) {
        $remove = new Remove();
        if($remove->deleteFullArt($_POST['delete'])) {
            header('location: index.php');
        } else {
            header('location: index.php?p=400');
        }
    }

?>