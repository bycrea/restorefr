<?php
   
    class Categories {
       
       private $_db;
    
       function __construct($db = null)
       {
            if($db !== NULL) {
                $this->_db = $db;
            } else {
                $this->_db = $GLOBALS['DB'];
            }
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