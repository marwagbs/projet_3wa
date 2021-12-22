<?php

//Appel de nos class nécessaires
require_once "models/User.php";
require_once "models/Reservation.php";
require_once "services/Session.php";
require "services/utils.php";
$checkUser= new User;
$message="";
if(!empty($_POST)) {
    //Vérification de l'existence de la clé et de si elle est bien remplie.
     if(array_key_exists('mail', $_POST) && !empty($_POST['mail'])) {
        //Extraction des variables depuis le POST
        extract($_POST);
        //Appel de la fonction pour vérifier l'email.
        $user= $checkUser->findByEmail($mail);
        try {
            // Si la méthode ne renvoie rien.
            if (empty($user)) {
                $message="cet email n'existe pas";
            } else{
                //Utilisateur existe, on vérifie le MDP.
                if (password_verify($password, $user['password'])) {
                    //On enregirste l'utilisateur dans la session
                    Session::start();
                    //ça si que nous vient de la BDD
                    Session::init($user['id'],$user['first_name'], $user['last_name'], $mail, $user['is_admin']);
                    Session::setError(); // Vider l'historique de notifs
                    header("location: index.php");
                } else {
                    //MDP invalide
                    $message="mot de passe erroné";
                }
            }
        } catch (DomainException $e) {
            echo $e->getMessage();
        }
     }
}



// Titre de la page

$pagePath = 'authentification_user';

// Rendu de la vue
render(__DIR__."/views/$pagePath", compact('checkUser','message'));