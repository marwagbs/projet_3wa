<?php

// Dépendances
require_once "models/Product.php";
require_once "services/Session.php";
require_once 'services/utils.php';
Session::start();


$pagePath = 'price';

// Rendu de la vue

$Mproduct=new Product;
$products = $Mproduct->findAll(); 
if (empty($_POST)){
    render(__DIR__."/views/$pagePath", compact('Mproduct','price','id','products'));
}else{
    $price=$_POST['price'];
    $id=$_GET['id'];
    $Mproduct->uptadePrice($price, $id);
    header("location: product.php");
    
}

