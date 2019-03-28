<?php
    
    $articles = new Article();
    
    //$_GET['catg'] permet d'aquerir les articles par catégories dans la $db
    if(isset($_GET['catg'])) {
        $arts_imgs = $articles->articlesCatg($_GET['catg']);
        $creations = $catgAll[($_GET['catg']-1)]['categorie'];
    } else {
        $arts_imgs = $articles->articlesAll();
        $creations = "Les Créations";
    }
    
    //REMOVE ARTICLE
    //Si $_POST['delete'] recois une ID on supprime l'article concerné
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