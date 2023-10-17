<?php 
//David Buesa

function afegirUsuari($usuari, $contrasenya){
    require 'connexio.php';

    try{
    $stmt = $conn->prepare("INSERT INTO usuaris (username, password) VALUES (?, ?)");
  
    $stmt->bindParam(1, $usuari);
    $stmt->bindParam(2, $contrasenya);
    
    $stmt->execute();
    }catch(PDOException $e){
        echo "Error: " . $e->getMessage();
    }
}


?>