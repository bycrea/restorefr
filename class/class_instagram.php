<?php

    class InstagramAPI {
        
        //Url API
        private $url_api = "https://api.instagram.com/v1/users/self/media/recent/?access_token=4995682323.95bd749.14e5e88b3b65440c8d7d927b8f569f87";

        public $flow_insta;
        public $tryCatch = NULL;

        function __construct()
        {
            $this->loadAPI();
        }

        public function loadAPI() {
            
            //Connexion au serveur d'instagram
            try {

                $curl = curl_init($this->url_api);
                curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 3);
                curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
                
                //Décodage en tableau du résultat de la requête
                $this->flow_insta = json_decode(curl_exec($curl));

                //Verifie qu'il n'y est pas d'erreur dans la requête
                if($this->flow_insta->meta->code == 200) {
                    //Renvoies l'objet JSON en cas de success
                    $this->tryCatch = NULL;
                    return true;
                } else {
                    //Renvoie false en cas d'erreur
                    $this->tryCatch = "Problème de connexion avec Instagram, veuillez réessayer plus tard.";
                    return false;
                }
            }
            //Si le serveur n'est pas joignable
            catch(Exception $e) {
                $this->tryCatch = "Problème de connexion avec Instagram, veuillez réessayer plus tard.";
                return false;
                //die('Erreur : ' . $e->getMessage());
            }
        }
    }

?>