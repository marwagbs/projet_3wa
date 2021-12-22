<?php

// Dépendances
require_once "models/Category.php";
require "services/Session.php";
require_once 'services/utils.php';
Session::start();
// Instances nécessaire

$categoryM = new Category;

// Test pour Post
if(!empty($_POST)){
    // Si on a un post, c'est que le form a été soumis
    // Ici on traite le form
    extract($_POST);
    $categoryM ->add([
        ":name" => $name,
        ":description" => $description
    ]);
}


$pagePath = 'addCategorie';

// Rendu de la vue
render(__DIR__."/views/$pagePath", compact('categoryM'));