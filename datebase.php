<?php
$servername = "localhost"; // Nom base de donée local serveur
$username = "id22069221_poppy"; // Nom base de donée 
$password = "245098Poy@"; // Mot de passe base de donée 
$dbname ="id22069221_chat"; // base de donée nom
$conn =""; // connextion base de donée
$e ="";//PDOException
$pseudo ="";// pseudo utilisateur
$stmt = "";
$id="12";
$row="";
$user="";
$pdo="";
$sql="";


try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   /* 
   echo "Query check";
   $sql = "SELECT * FROM discussions WHERE id=?"; // SQL with parameters
    $stmt = $pdo->prepare($sql); 
    $stmt->bindParam(1, $id);
    $stmt->execute();

    // Fetch the result
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    print_r($result);
    */

} catch(PDOException $e) {
    
    echo "Connection failed: " . $e->getMessage();
}

?>

  