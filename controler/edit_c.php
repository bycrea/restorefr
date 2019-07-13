<?php

    //Verifie si le model correspondant au controller existe et l'inclu
    if(file_exists('model/'.$GLOBALS['p'].'_m.php')) {
        include('model/'.$GLOBALS['p'].'_m.php');
    }

    echo $twig->render($GLOBALS['p'].'.html', array(
        'title' => "Re-STORE - Edition d'aticle",
        'admin' => $_SESSION['status'],
        'creations' => $artId['categorie'],
        // Remplissage du formulaire et Article
        'titre_val' => $artId['titre'],
        'descrpt_val' => $artId['descrpt'],
        'article_val' => $artId['article'],
        'id_art' => $artId['id_articles'],
        // Variables Images
        'mark1' => $artId['url_img'],
        'images' => $imgAll
    ));
    
?>