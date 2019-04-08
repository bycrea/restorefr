<?php

    //Initiamisation des variables
    $mail = '';
    $pass;
    $msg = '';

    //Si des cookies existent, on prérempli le formulaire de mail
    if (isset($_COOKIE['remember'])) {
        $mail = $_COOKIE['remember'];
        $msg = "Connecté en tant que ".$_COOKIE['remember'];
    }

    //Si $_POST 'login_submit' est déclaré
    if(isset($_POST['login_submit'])) {
        $mail = $_POST['mail'];
        $pass = $_POST['password'];

        //Recupère les informations de l'utilisateur
        $req = $db->prepare('SELECT * FROM users 
                            INNER JOIN status ON users.status_id_status = status.id_status
                            WHERE mail=:mail
                            ');
        $req->bindParam(':mail', $mail);
        $req->execute();
        $result = $req->fetch();
        
        //Si l'utilisateur existe
        if($mail == $result['mail']) {
            //Si le mot de passe correspond
            if(password_verify($pass, $result['password'])) {
                //Si 'remenber' est spécifié
                if(isset($_POST['remember'])) {
                    //Enregistre un coockie pour un mois
                    setcookie("remember",$result['mail'],time() + (86400*30));  //(86400 * 30) = 1mois
                } else {
                    //Enregistre un coockie jusqu'a ce que l'explorateur soit fermé
                    setcookie("remember", $result['mail']);
                }
                
                //Enregistre le statut de l'utilisateur dans $_SESSION
                $_SESSION['status'] = $result['status'];
                header('location: index.php');
            } else {
                //Si le mot de pas est incorrect
                $msg = 'mot de passe incorrect';
            }
        } else {
            //Si le mail n'est pas reconnu
            $msg = 'mail inconnu';
            $mail = '';
        }
    }

?>