<?php

    //Verifie si le model correspondant au controller existe et l'inclu
    if(file_exists('model/'.$GLOBALS['p'].'_m.php')) {
        include('model/'.$GLOBALS['p'].'_m.php');
    }
          
    echo $twig->render($GLOBALS['p'].'.html', array(
        'title' => 'Re-STORE - Bienvenue',
        'admin' => $_SESSION['status'],
        'arts_imgs' => $arts_imgs,
        'creations' => $creations
        ));

?>