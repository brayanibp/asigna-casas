<?php
    class Connection {
        private $DB = "mysql";
        private $host = "localhost";
        protected $dbName = "mision_hogar";
        private $user = "mision";
        private $pass = "Mis10nHog4r.";

        public $connect = "";

        public function __construct()
        {
            try
            {
                $this->$connect = new PDO("$this->DB:host=$this->host;dbname=$this->dbName;charset=utf8","$this->user");
            } catch(PDOException $e)
            {
                echo "Error: " . $e->getMessage();
            };
        }
    };

/* Tengo mas o menos rato sin usar PHP, cualquier problema lo modificas, si el connect da problemas lo dejas sin nada, primera vez lo declaro
   con comillas jaja.
*/