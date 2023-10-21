<?php

session_start();

$errors = array();

if (isset($_POST['crear'])){
    include "../Vista/crearArticle.vista.php";
} else if (isset($_POST['afegirArticle'])) {

    if (empty($_POST['textarea'])) {
        $errors[] = "No pots afegir un article buit!";
        include "../Vista/crearArticle.vista.php";
    } else {
        include "../Model/utils.php";
        include "../Model/articlesUsuari.php";
        $descripcio = netejarData($_POST['textarea']);
        $usuari_id = $_SESSION['username']; 
        $usuari_id = obtenirUsuariId($usuari_id)->usuari_id;
        require_once "../Model/accionsUsuaris.php";
        crearArticle($descripcio, $usuari_id);
    }

} else if (isset($_POST['editar'])) {
    
} else if (isset($_POST['eliminar'])) {
    include "../Vista/eliminarArticle.vista.php";

} else {
   
}

?>