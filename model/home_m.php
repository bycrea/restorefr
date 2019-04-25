<?php

    //--- AFFICHAGE DES ARTICLES ---//

    // On instancie la class Article
    $articles = new Article();

    // Si $_GET['catg'] est défini
    // On appel la méthode 'articlesCatg()' avec en paramètre la catégorie correspondante
    if(isset($_GET['catg'])) {
        $arts_imgs = $articles->articlesCatg($_GET['catg']);
        $creations = $catgAll[($_GET['catg']-1)]['categorie'];

    // Sinon on charge tous les articles avec la méthode 'articlesAll()'
    } else {
        $arts_imgs = $articles->articlesAll();
        $creations = "Les Créations";
    }
    
    //--- SUPPRSSION D'UN ARTICLE ---//

    // Si $_POST['delete'] recois une ID on supprime l'article concerné
    if(isset($_POST['delete'])) {
        $id = $_POST['delete'];
        $remove = new Remove();
        if($remove->deleteFullArt($id)) {
            header('location: index.php');
        } else {
            header('location: index.php?p=400');
        }
    }
    
?>