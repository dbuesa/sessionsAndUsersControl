<?php
//David Buesa

include '../Vista/login.vista.php';

if(!empty($_POST["username"]) && !empty($_POST["password"])){
    $user = netejarData($_POST["username"]);
    $contrassenya = netejarData($_POST["password"]);
}


require_once 'connexio.php';
try{
    $stmt = $conn->prepare("SELECT * FROM usuaris WHERE username = ?");
    $stmt->bindParam(1, $user);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if($result){
        if(password_verify($contrassenya, $result['password'])){
            session_start();
            $_SESSION['username'] = $user;
            header("Location: ../Vista/vistaUsuari.php");
        }else{
            header("Location: ../index.php");
        }
    }else{
        header("Location: ../index.php");
    }
}catch(PDOException $e){
    echo "Error: " . $e->getMessage();
}




?>