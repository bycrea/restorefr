<?php
   
    class Article {
    
        private $_db;
        
        function __construct($db)
        {
            $this->_db = $db;
        }

        //Recupère TOUS les articles & images MARK 1
        public function articlesAll()
        {
            $req = $this->_db->prepare('SELECT art.id_articles, art.titre, art.descrpt, art.url_article, art.id_catg, cat.categorie, img.url_img
                                        FROM articles art 
                                        JOIN categories cat ON cat.id_catg = art.id_catg
                                        JOIN images img ON art.id_articles = img.id_articles
                                        WHERE img.mark = 1 ORDER BY art.id_catg;');
            $req->execute();
            return $req->fetchAll();
        }

        public function articlesCatg($catg)
        {
            $req = $this->_db->prepare('SELECT art.id_articles, art.titre, art.descrpt, art.url_article, art.id_catg, cat.categorie, img.url_img
                                        FROM articles art 
                                        JOIN categories cat ON cat.id_catg = art.id_catg
                                        JOIN images img ON art.id_articles = img.id_articles
                                        WHERE art.id_catg = :catg AND img.mark = 1;');
            $req->bindParam(':catg', $catg);
            $req->execute();
            return $req->fetchAll();
        }

        //Recupère UN article & image MARK 1 par ID
        public function articleId($id)
        {
            $req = $this->_db->prepare('SELECT art.id_articles, art.titre, art.descrpt, art.article, art.url_article, art.id_catg, cat.categorie, img.url_img
                                        FROM articles art 
                                        JOIN categories cat ON cat.id_catg = art.id_catg
                                        JOIN images img ON art.id_articles = img.id_articles
                                        WHERE art.id_articles = :id AND img.mark = 1;');
            $req->bindParam(':id', $id);
            $req->execute();
            return $req->fetch();
        }

        //Recupère toutes les images liées à un article
        public function imagesId($id) 
        {
            $req = $this->_db->prepare('SELECT id_images, url_img, mark FROM images
                                        WHERE id_articles = :id
                                        ORDER BY mark;');
            $req->bindParam(':id', $id);
            $req->execute();
            return $req->fetchAll();
        }
            
        //INSERT article dans la $db
        public function insertArticle($article, $img_to_db) 
        {
            $req = $this->_db->prepare('INSERT INTO articles
                                (titre, descrpt, article, url_article, id_catg) 
                                VALUES 
                                (:titre, :descrpt, :article, :url_article, :id_catg);');
            $req->execute(array(
                ':titre' => $article['titre'],
                ':descrpt' => $article['descrpt'],
                ':article' => $article['article'],
                ':url_article' => 'img/'.$article['url_art'].'/',
                ':id_catg' => $article['categorie']
            ));

            //Recupère l'ID du dernier INSERT
            $lastId = $this->_db->lastInsertId();
            
            //INSERT images de "last article" dans la $db
            $n_img = count($img_to_db);
            for ($i=0; $i < $n_img; $i++) {
                $req = $this->_db->prepare('INSERT INTO images
                                            (name, url_img, id_articles, mark) 
                                            VALUES 
                                            (:name, :url_img, :id_articles, :mark);');
                $req->execute(array(
                    ':name' => $img_to_db[$i]['name'],
                    ':url_img' => $img_to_db[$i]['url_img'].$img_to_db[$i]['name'],
                    ':id_articles' => $lastId,
                    ':mark' => $img_to_db[$i]['mark']
                ));
            }
            return $lastId;
        }


        //UPDATE article dans la $db
        public function updateArticle($id) 
        {
            $req = $this->_db->prepare('UPDATE articles
                                SET titre = :titre, descrpt = :descrpt, article = :article, id_catg = :id_catg
                                WHERE id_articles = :id;');
            $req->execute(array(
                ':id' => $id, 
                ':titre' => $_POST['titre'],
                ':descrpt' => $_POST['descrpt'],
                ':article' => $_POST['article'],
                ':id_catg' => $_POST['categorie']
            ));

            return true;
        }
    } 

?>