<?php

// Dépendances
require_once "models/Order.php";
require "services/Session.php";
Session::start();

require_once "services/Session.php";
require_once 'services/utils.php';
Session::start();

$pagePath = 'Commande';
$Morder=new Order;
$orders = $Morder->findAll(); 

$lastOrder = end($orders);
$total=floatval($lastOrder['total']);

// Rendu de la vue
render(__DIR__."/views/$pagePath", compact('orders','Morder','lastOrder','total'));




