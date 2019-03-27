<?php

    include('model/article_m.php');
          
    echo $twig->render('article.html', array(
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