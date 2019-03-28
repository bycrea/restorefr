<?php

    include('model/create_m.php');
    
    echo $twig->render('create.html', array(
        'title' => "Re-STORE - Création d'aticle",
        'admin' => $_SESSION['status'],
        'msg_error' => $msg_error,
        //Pré-remplissage
        'titre_val' => $titre_val,
        'descrpt_val' => $descrpt_val,
        'article_val' => $article_val,
        'url_art_val' => $url_art_val
    ));

?>