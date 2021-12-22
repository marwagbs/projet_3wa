<?php

//Appel de fichier User.
require_once "models/User.php";
require_once "services/Session.php";
require_once 'services/utils.php';

$addUser= new User; 


if(!empty($_POST)) {
    //Vérification de l'existence de la clé et de si elle est bien remplie.
    if(array_key_exists('mail', $_POST) && !empty($_POST['mail'])) {
        //Extraction des variables depuis le POST
        extract($_POST);
       
        //Vérification du format du mail. 
        if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
              //echo "adresse mail non valide";
        } else{
            $addUser->add([
                ':email' => $mail,
                ':password' => password_hash($password,PASSWORD_DEFAULT),
                ':firstName' => $firstname,
                ':lastName' => $lastname,
                ':phoneNumber' => $phonenumber,
                ':isNews' => $isnews ? 1 : 0 
                ]);
            header("location: authentification.php");
            exit();
        }
    }
}

//AFFICHAGE À TRAVERS LA VIEW
$pagePath = 'registration_user';

// Rendu de la vue
render(__DIR__."/views/$pagePath", compact('addUser'));

