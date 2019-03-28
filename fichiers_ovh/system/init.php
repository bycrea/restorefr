<?php

    //Connexion a la base de donnée
    try
    {
        $db = new PDO('mysql:host=restorefacroot22.mysql.db;dbname=restorefacroot22;charset=utf8','restorefacroot22','Bycrea2201');
        $GLOBALS['DB'] = $db;
    }
    catch(Exception $e)
    {
            die('Erreur : '.$e->getMessage());
    }

    //Autolaod Class
    $directory="class/";
    $listClass = scandir(getcwd()."/".$directory);
    foreach($listClass as $class){
        if(strstr($class, '.php', true)){
            require $directory.$class;
        }
    }

    //Menu categories NAVBAR
    //$catgAll utilisé pour les pages creation et edit.
    $catg = new Categories();
    $catgAll = $catg->getAllcatg();
    
    //Chargement de Twig
    require('vendor/autoload.php');

    $loader = new Twig_Loader_Filesystem('view');
    $twig = new Twig_Environment($loader);
    $ii = 'index.php?p=';
    $twig->addGlobal('ii', $ii);
    $twig->addGlobal('creations', 'Les Créations');
    $twig->addGlobal('catg_drop', $catgAll);

?>