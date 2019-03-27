<?php

    include('model/home_m.php');
          
    echo $twig->render('home.html', array(
        'title' => 'Re-STORE - Bienvenue',
        'admin' => $_SESSION['status'],
        'arts_imgs' => $arts_imgs,
        'creations' => $creations
        ));

?>