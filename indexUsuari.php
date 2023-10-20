<?php 
//David Buesa

    require "Model/articles.php";

    $articlesPerPagina = intval(articles());

    $pagina = 1;

    if (isset($_GET["pagina"])) {
        $pagina = intval($_GET["pagina"]);
    }

    $pagines = contarPagines($articlesPerPagina);

    $limit = $articlesPerPagina;
    $offset = ($pagina - 1) * $articlesPerPagina;

    $articles = llistarArticles($limit, $offset);



    $list = "<ul>";

    foreach ($articles as $article) {
        $list .= "<li>{$article->descripcio}</li>";
    }
    $list .= "</ul>";

    
    include 'Vista/index.vista.php';

    

?>*