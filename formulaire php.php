<?php
include('head html.php');
?>
 <div class="navbar">
        <a class="nav-link" aria-current="page" href="index.html">Home</a>
        <a class="nav-link" href="Page Html-Css.html">Html/CSS</a>
        <a class="nav-link" href="Page caroussel.html">JS</a>
        <a class="nav-link" href="formulaire php.php">PHP/SQL</a>
        <a class="nav-link" href="page CV.html">CV</a>


    </div>


<div class ='Formulaire'>
    <form action='formulaire php.php' method='GET'>
        <input type='text' id='videogames' name='videogames' placeholder='Quel jeux?'>
       <button> Appuyer</button>
    </form>

</div>
<?php



if (isset($_GET['videogames'])){
    $choice =$_GET['videogames'];
    $fichier= fopen('datebase.csv','r');
    while (($row=fgetcsv($fichier)) !== FALSE){
        $id=$row[0];
        $game=$row[1];
    };
    if ($choice == $game){
        echo 'well done!';  
    }
    else{
        echo 'wrong try again';
    };
};
?>

<?php
$messages="";


//Connextion base de donée
include("datebase.php");




// Verification Message 
if (isset($_POST['message'])) {
    
    // Insérer le message dans la base de données
    $stmt = $pdo->prepare("INSERT INTO discussions (Nom, Conversation) VALUES (:nom, :message)");
    $stmt->bindParam(':nom', $_POST['nom']);
    $stmt->bindParam(':message', $_POST['message']);
    $stmt->execute();
}
// Recuperation Message de la Base de donée
$stmt = $pdo->Query("SELECT * FROM `discussions`;");
$stmt->execute();
$messages = $stmt->fetchAll();
?>
<!-- Interface Chat  -->
<div class="Pagechat">
    <h1>Messages</h1>
    <div class="Formulaire">
        <form action="" method="post">
            <input type="text" id="nom" name="nom" placeholder="Votre pseudo">
            <input type="text" id="message" name="message" placeholder="Votre Message">
        
        <button type="submit">Envoyer</button>
    </form>
    </div>
    <?php foreach ($messages as $message): ?>
        <div class="message">
            <?php echo $message['Connexion'];?>
            <?php //echo date_format($message['Connexion'],"Y/m/d H:i:s");?>
            <strong><?php echo $message['Nom']; ?>:</strong>
            <?php echo $message['Conversation'];
            
            ?>
        </div>
    <?php endforeach; ?>
   
</div>
