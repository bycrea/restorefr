<?php

    include('model/editimages_m.php');
          
    echo $twig->render('editimages.html', array(
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