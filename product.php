<?php

// Dépendances
require_once "models/Product.php";
require_once "services/Session.php";
require_once 'services/utils.php';
Session::start();


$pagePath = 'product';

$Mproduct=new Product;

$products = $Mproduct->findAll(); 


// Rendu de la vue
render(__DIR__."/views/$pagePath", compact('Mproduct','products'));