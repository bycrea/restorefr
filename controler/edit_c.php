<?php

    //Verifie si le model correspondant au controller existe et l'inclu
    if(file_exists('model/'.$GLOBALS['p'].'_m.php')) {
        include('model/'.$GLOBALS['p'].'_m.php');
    }

    echo $twig->render($GLOBALS['p'].'.html', array(
        'title' => "Re-STORE - Edition d'aticle",
        'admin' => $_SESSION['status'],
        'creations' => $artId['categorie'],
        //remplissage du formulaire
        'titre_val' => $artId['titre'],
        'descrpt_val' => $artId['descrpt'],
        'article_val' => $artId['article'],
        'id_art' => $artId['id_articles'],
        //variable article preview
        'titre_art' => $artId['titre'],
        'article' => $artId['article'],
        'mark1' => $artId['url_img'],
        'images' => $imgAll
    ));

?>