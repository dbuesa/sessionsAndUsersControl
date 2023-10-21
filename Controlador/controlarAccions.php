<?php

if(isset($_POST['afegirArticle'])){
    require_once "../Model/accionsUsuaris.php";
    crearArticle();
}

?>