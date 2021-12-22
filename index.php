<?php

require "services/Session.php";
require_once 'services/utils.php';
Session::start();



// Titre de la page

$pagePath = 'home';

// Rendu de la vue
render(__DIR__."/views/$pagePath");