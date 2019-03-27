<?php
    //Error repporting
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    
    //Fonction de Débug
    function debug($varToDebug){
        echo '<pre>';
        print_r($varToDebug);
        echo '</pre>';
    }
    
    //Connexion a la base de donnée
    try
    {
        $db = new PDO('mysql:host=localhost;dbname=restorefr;charset=utf8', 'root', 'root');
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
    //$catgAll utile pour les pages creation et edit.
    $catg = new Categories($db);
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