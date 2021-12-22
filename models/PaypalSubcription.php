<?php
class PaypalSubcription{
    
    private $username;
    private $password;
    private $signature;
    private $orders;
    
    public function __construct($username, $password, $signature, $orders){
        
        $this->username=$username;
        $this->password=$password;
        $this->signature=$signature;
       $this->orders=$orders;
        
    }
}