<?php

    //Start $_SESSION
    session_start();
    //Load system/init.php
    require('system/init.php');
    
    //Si l'utilisateur n'est pas admin statut = none
    if(!isset($_SESSION['status'])) {
        $_SESSION['status'] = 'none';
    } 

    //Si aucune page 'p' n'est selectionné : p = home
    if(!isset($_GET['p'])) {
        $_GET['p'] = 'home';
    }
    
    //Si la page correspondante au $_GET['p'] existe, On l'inclu.
    if(file_exists('controler/'.$_GET['p'].'_c.php')) {
        include('controler/'.$_GET['p'].'_c.php');

    //Si $_GET['p'] = 400 (erreur interne au programme)
    } elseif ($_GET['p'] == 400) {
        echo $twig->render('error_400.html', array(
            'title' => 'Re-STORE - Erreur serveur',
            'admin' => $_SESSION['status']
        ));

    //Si $_GET['p'] n'eexiste pas : erreur 404
    } else {
        echo $twig->render('error_404.html', array(
            'title' => 'Re-STORE - erreur 404',
            'admin' => $_SESSION['status']
        ));
    }

?>