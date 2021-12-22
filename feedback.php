<?php
// Dépendances
require_once "models/Reservation.php";


require "services/Session.php";
Session::start();

$feedbackM=new Feedback;

$message="";
if (!empty($_POST)){
    //Vérification de l'existence de la clé et de si elle est bien remplie.
   if(array_key_exists('comment', $_POST) && !empty($_POST['comment'])) {
       //Extraction des variables depuis le POST
        extract($_POST);
        $id=$_SESSION['login']['id'];
        //insertion des données dans la BDD
        $reservationM->add([
            ":comment" => $comment,
            ":user_id"=> $id,
            
        ]);
        //si l'insertion est b1 faite un msg s'affiche
    $message="Your reservation was successfull!";
}
}
require "views/reservation.phtml";  


