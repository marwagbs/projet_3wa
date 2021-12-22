<?php
// Force type hinting
declare(strict_types=1);


//Import de Model
require_once 'Model.php';

class User extends Model
{
    protected string $table ='user';
    
    public function add(array $params): void{
        try{
            //Verifier si mail exist
            if ($this->findByEmail($params[':email']))
            {
                throw new PDOException("Cet email existe déja");
            }
            else{
                //insertion de l'utilisateur
          
                $add = $this->dataBase->prepare(
                   "INSERT INTO user ( mail, password, first_name, last_name, phone_number, is_news) VALUES (:email, :password, :firstName, :lastName, :phoneNumber, :isNews)"
                );
                $add->execute($params);
                
            }
        
        }catch (PDOException $e) {
            echo $e->getMessage();
            exit;
        }
    }
    
    public function findByEmail(string $email){
        try{
            $find= $this->dataBase->prepare("SELECT * FROM user WHERE mail = :email");
            $find->execute([':email' => $email]);
            $res=$find->fetch();
        }catch (PDOException $e) {
            echo $e->getMessage();
            die;
        }
        // var_dump($res);
        // die;
        return $res;
    }


    
}

