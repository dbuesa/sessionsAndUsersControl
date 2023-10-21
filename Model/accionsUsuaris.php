<?php

function crearArticle($descripcion, $usuari_id){
    require "connexio.php";
  

    $stmt = $conn->prepare("INSERT INTO articles (descripcio, usuari_id) VALUES (?, ?)");
    $stmt->execute([$descripcion, $usuari_id]);

    echo '<script>alert("Article desat!");</script>';
    header("refresh:0.01, url=../index.php");
}

function eliminarArticle($article_id, $usuari_id){
    require "connexio.php";

    $stmt = $conn->prepare("DELETE FROM articles WHERE article_id = ? AND usuari_id = ?");
    $stmt->execute([$article_id, $usuari_id]);

    echo '<script>alert("Article eliminat!");</script>';
    header("refresh:0.01, url=../index.php");
}
?>