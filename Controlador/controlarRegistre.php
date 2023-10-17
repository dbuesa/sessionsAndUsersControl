<?php 
//David Buesa

include "../Vista/register.vista.php";

$errors = array();

if(!empty($_POST["username"]) && !empty($_POST["password"]) && !empty($_POST["password2"])){
    $user = htmlspecialchars($_POST["username"]);
    $contr1 = htmlspecialchars($_POST["password"]);
    $contr2 = htmlspecialchars($_POST["password2"]);
}


function comprovarContrassenya($contr1, $contr2){
    echo 'hola';
    if($contr1 == $contr2){
        return true;
    }else{
        $errors[] = "Les contrassenyes no coincideixen";
        return false;
    }
}

function comprovarUsuari($user){
    echo 'adeu';
    if (strlen($user) < 4) {
        $errors[] = "L'usuari ha de tenir més de 4 caràcters";
        return false;
    }else{
        return true;
    }
}


if (isset($_POST['signup_submit']) && comprovarUsuari($user) && comprovarContrassenya($contr1, $contr2)) {
    require_once '../Model/register.php';
    $contrassenya = hash('sha512', $contr1);
    afegirUsuari($user, $contrassenya);    
}

?>