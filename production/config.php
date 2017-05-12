<?php
function getPDOConnection(){
  $dbhost  = 'localhost';
  $dbname = 'tester_management';
  $charset = 'utf8';
  $dsn = "mysql:host={$dbhost};dbname={$dbname};charset={$charset}";
  $username = 'root';
  $password = 'password';

    try {
        $dbh = new PDO($dsn, $username, $password);
        $dbh->setAttribute(PDO::ATTR_ERRMODE,
                                  PDO::ERRMODE_EXCEPTION);
        }catch (PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
        return $dbh;
}
?>
