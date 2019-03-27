<?php
   
    class Categories {
       private $_id_catg;
       private $_categorie;
       
       private $_db;
    
       function __construct($db)
       {
           $this->_db = $db;
       }

       // getAll Categories
       public function getAllcatg()
       {
            $req = $this->_db->prepare('SELECT * FROM categories;');
            $req->execute();
            return $req->fetchAll();
       }
    } 
   
?>