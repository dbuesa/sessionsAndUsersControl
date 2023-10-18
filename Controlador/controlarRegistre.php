<?php 
//David Buesa

$errors = array();

if(!empty($_POST["username"]) && !empty($_POST["password"]) && !empty($_POST["password2"])){
    require_once '../Model/utils.php';
    $user = netejarData($_POST["username"]);
    $contr1 = netejarData($_POST["password"]);
    $contr2 = netejarData($_POST["password2"]);
}


function comprovarContrassenya($contr1, $contr2){
    if($contr1 == $contr2){
        return true;
    }else{
        
        return false;
    }
}
function validarContrassenya($contr1){
    if (strlen($contr1) < 6) {
        
        return false;
    }else{
        return true;
    }
}

function comprovarUsuari($user){
    if (strlen($user) < 5) {
        
        return false;
    }else{
        return true;
    }
}

function existeixUsuari($user){
    require_once '../Model/connexio.php';
    $stmt = $conn->prepare("SELECT * FROM usuaris WHERE username = ?");
    $stmt->bindParam(1, $user);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if($result){
        return false;
    }else{
        return true;
    }
}

if (isset($_POST['signup_submit'])) {
    if (!comprovarContrassenya($contr1, $contr2)) {
        $errors[] = "Les contrassenyes no coincideixen";
    }
    if (!validarContrassenya($contr1)) {
        $errors[] = "La contrassenya ha de tenir més de 6 caràcters";
    }
    if (!comprovarUsuari($user)) {
        $errors[] = "L'usuari ha de tenir més de 5 caràcters";
    }
    if (!existeixUsuari($user)) {
        $errors[] = "L'usuari ja existeix";
    }

    if (empty($errors)) {
        require_once '../Model/register.php';
        $contassenya = password_hash($contr1, PASSWORD_DEFAULT);
        afegirUsuari($user, $contassenya);
        header("Location: ../index.php");
    }
}

include "../Vista/register.vista.php";
?>