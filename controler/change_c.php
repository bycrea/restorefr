<?php

    setcookie("remember","",time() - (86400 * 30));
    unset($_SESSION);
    session_destroy();
    header('location: '.$ii.'login');

?>