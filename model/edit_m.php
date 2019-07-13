<?php

    // Recpère les informations de l'article passé en $_GET
    $article = new Article();
    $artId = $article->articleId($_GET['id']);

    // Si l'artcile n'existe pas retour page 404
    if(empty($artId)) {
        header('location: index.php?p=404');
    }

    // Recpère les images de l'article
    $images = new Images();
    $imgAll = $images->imagesAll($_GET['id']);

    // Si l'article est modifié, on récupère les données en $_POST
    if(!empty($_POST)) {
        $update = new Article();
        $update->updateArticle($artId['id_articles']);
        header('location: index.php?p=article&id='.$artId['id_articles']);
    }

?>
