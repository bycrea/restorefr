<?php

    // Initiamisation des variables
    $mail = $pass = $msg_error = NULL;

    // Si des cookies existent on prérempli le formulaire de mail
    if (isset($_COOKIE['remember'])) {
        $mail = $_COOKIE['remember'];
    }

    // Si $_POST['login_submit'] est défini
    if(isset($_POST['login_submit'])) {

        // On enregistre les variables $_POST dans de nouvelles variables
        $mail = $_POST['mail'];
        $pass = $_POST['password'];

        // Recupère les informations de l'utilisateur en base de donnée
        $req = $db->prepare('SELECT * FROM users 
                            INNER JOIN status ON users.status_id_status = status.id_status
                            WHERE mail=:mail
                            ');
        $req->bindParam(':mail', $mail);
        $req->execute();
        $result = $req->fetch();
        
        // Si l'utilisateur existe
        if($mail == $result['mail']) {

            // Si le mot de passe correspond
            if(password_verify($pass, $result['password'])) {

                // Si 'se souvenir' est coché : 'remenber' est défini
                if(isset($_POST['remember'])) {

                    // Enregistre un cookie pour une durée d'un mois
                    setcookie("remember",$result['mail'],time() + (86400*30));  //(86400 * 30) = 1mois
                } else {

                    // Enregistre un cookie jusqu'a ce que l'explorateur soit fermé
                    setcookie("remember", $result['mail']);
                }
                
                // Enregistre le statut et le mail de l'utilisateur dans $_SESSION
                $_SESSION['status'] = $result['status'];
                $_SESSION['mail'] = $mail;

                header('location: index.php');

            } else {

                // Si le mot de pas est incorrect
                $msg_error = 'mot de passe incorrect';
            }

        // Si le mail n'est pas reconnu
        } else {
            
            // On renvoie un message d'erreur
            $msg_error = 'mail inconnu';
            $mail = '';
        }
    }

?>