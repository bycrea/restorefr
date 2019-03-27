<?php

    //Recpère les informations de article
    $article = new Article($db);
    $artId = $article->articleId($_GET['id']);
    //Si l'artcile n'existe pas retour page 404
    if(empty($artId)) {
        header('location: index.php?p=404');
    }

    //Recpère les images de article
    $imgId = $article->imagesId($_GET['id']);

    //Re-selection de la catégorie choisi en $_POST en rajoutant un 'selected' sur celle-ci
    $catg_crea = "";
    foreach($catgAll as $element) {
        if($artId['id_catg'] == $element['id_catg']) {
            $catg_crea .='
            <option selected value="'.$element['id_catg'].'">'.$element['categorie'].'</option>';
        } else {
            $catg_crea .='
            <option value="'.$element['id_catg'].'">'.$element['categorie'].'</option>';
        }
    }

    //Si l'article est modifié, on récupère les données en $_POST
    if(!empty($_POST)) {
        $update = new Article($db);
        $update->updateArticle($artId['id_articles']);
        header('location: index.php?p=article&id='.$artId['id_articles']);
    }

?>