<?php

    //Verifie si le model correspondant au controller existe et l'inclu
    if(file_exists('model/'.$GLOBALS['p'].'_m.php')) {
        include('model/'.$GLOBALS['p'].'_m.php');
    }
          
    echo $twig->render($GLOBALS['p'].'.html', array(
        'title' => 'Re-STORE - '.$artId['titre'],
        'admin' => $_SESSION['status'],
        'creations' => $artId['categorie'],
        'id_article' => $artId['id_articles'],
        'titre_art' => $artId['titre'],
        'article' => $artId['article'],
        'mark1' => $artId['url_img'],
        'images' => $imgId
    ));

?>