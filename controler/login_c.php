<?php

    include('model/login_m.php');    

    echo $twig->render('login.html', array(
        'title' => 'Re-STORE - Login',
        'admin' => $_SESSION['status'],
        'mail' => $mail,
        'message' => $msg
    ));

?>