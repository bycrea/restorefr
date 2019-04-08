<?php

    //Verifie si le model correspondant au controller existe et l'inclu
    if(file_exists('model/'.$GLOBALS['p'].'_m.php')) {
        include('model/'.$GLOBALS['p'].'_m.php');
    }
    
    echo $twig->render($GLOBALS['p'].'.html', array(
        'title' => "Re-STORE - Création d'aticle",
        'admin' => $_SESSION['status'],
        'msg_error' => $msg_error,
        //Pré-remplissage
        'titre_val' => $titre_val,
        'descrpt_val' => $descrpt_val,
        'article_val' => $article_val,
        'url_art_val' => $url_art_val,
        'catg_crea' => $catg_crea
    ));

?>