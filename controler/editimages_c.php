<?php

    //Verifie si le model correspondant au controller existe et l'inclu
    if(file_exists('model/'.$GLOBALS['p'].'_m.php')) {
        include('model/'.$GLOBALS['p'].'_m.php');
    }
          
    echo $twig->render($GLOBALS['p'].'.html', array(
        'title' => 'Re-STORE - Console Alim',
        'admin' => $_SESSION['status'],
        'creations' => $artId['categorie'],
        'msg_error' => $msg_error,
        //variable images preview
        'id_art' => $artId['id_articles'],
        'titre_art' => $artId['titre'],
        'images' => $imgAll,
        'n_img' => $n_img
        ));

?>