<?php

if(isset($_POST["Entrar"])){

    include_once '../Model/login.php';

    $user = netejarData($_POST["user"]);
    $contrassenya = netejarData($_POST["password"]);
    
    loginUsuari($user, $contrassenya);
    
}

include '../Vista/login.vista.php';
?>