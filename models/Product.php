<?php
// Force type hinting
declare(strict_types=1);


//Import de Model
require_once 'Model.php';


class Product extends Model
{
    protected string $table= 'product';
    
    public function add(array $params): void{
        try{
            if($this->findByName($params[':name'])){
                throw new PDOException("ce produit existe déja");
            }else
            $add=$this->dataBase->prepare(
                "INSERT INTO product(name, description, price, picture, product_category_id) 
                VALUES (:name, :description, :price, :picture, :category)");
            $add->execute($params);
        }catch (PDOException $e) {
            echo $e->getMessage();
            exit;
    }
    }    
    
    public function findByName(string $name){
        try{
            $find=$this->dataBase->prepare("SELECT * FROM product WHERE name = :name");
            $find->execute([':name' => $name]);
            $res=$find->fetch();
        }catch (PDOException $e) {
            echo $e->getMessage();
            exit;
    }
    return $res;
    }
    
    
    public function uptadePrice(string $price, string $id){
        try{
            $up=$this->dataBase->prepare("UPDATE product SET price = :price WHERE id = :id");
            $up->execute([':price'=> $price, ':id' => $id]);
            $res=$up->fetchAll();
        }catch (PDOException $e) {
            echo $e->getMessage();
            exit;
    }
    return $res;
    }
    
    //function pour parcourir tout les id de localstorage
    public function localStorage(array $params){
        // var_dump($params);
        //  die;
          try{
        $sql="SELECT * FROM product WHERE";
        for($i=0, $c=count($params); $i<$c; $i++){
            if($i > 0){
                $sql .=' OR ';
            }
            $sql .=' id = ' . $params[$i];
         
        }
        $request=$this->dataBase->prepare($sql);
        $request->execute();
         $res=$request->fetchAll();
        }catch (PDOException $e) {
            echo $e->getMessage();
            exit;
    }
    return $res;

    }
}