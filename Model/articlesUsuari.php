<?php
//David Buesa

/**
 * Funció que retorna el nombre d'articles per pàgina
 * @return articlesPerPagina nombre d'articles per pàgina
 */
function articles(){
    if (isset($_GET['opcions'])) {
        $_SESSION['articlesPerPagina'] = $_GET['opcions']; 
    } else {
       
        $_SESSION['articlesPerPagina'] = isset($_SESSION['articlesPerPagina']) ? $_SESSION['articlesPerPagina'] : 10;
    }
    return $_SESSION['articlesPerPagina'];
}

/**
 * Funció que retorna els articles de l'usuari actual
 * @return articles articles de l'usuari actual
 */
function llistarArticlesUsuari(){
    require "connexio.php";

    $usuari_id = obtenirUsuariId();
    $usuari_id = $usuari_id->usuari_id;
    $stmt = $conn->prepare("SELECT * FROM articles WHERE usuari_id = ?");
    $stmt->execute([$usuari_id]);
    $articles = $stmt->fetchAll(PDO::FETCH_OBJ);

    return $articles;
}


function obtenirUsuariId(){
    require "connexio.php";

    $stmt = $conn->prepare("SELECT usuari_id FROM usuaris WHERE username = ?");
    $stmt->execute([$_SESSION['username']]);
    $usuari_id = $stmt->fetch(PDO::FETCH_OBJ);

    return $usuari_id;
}

/**
 * Funció que retorna el nombre de pàgines
 * @param articlesPerPagina nombre d'articles per pàgina
 * @return pagines nombre de pàgines
 */
function contarPagines($articlesPerPagina){
    require "connexio.php";
    $stmt = $conn->query("SELECT count(*) AS count FROM articles");
    $count = $stmt->fetchObject()->count;

    $pagines = ceil($count / $articlesPerPagina);

    return $pagines;
}
?>