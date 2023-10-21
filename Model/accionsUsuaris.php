<?php

function crearArticle($descripcion, $usuari_id){
    require "connexio.php";
  

    $stmt = $conn->prepare("INSERT INTO articles (descripcio, usuari_id) VALUES (?, ?)");
    $stmt->execute([$descripcion, $usuari_id]);

    echo '<script>alert("Article desat!");</script>';
    header("refresh:0.01, url=../index.php");
}

?>