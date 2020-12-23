<?php

require_once 'connexion.php';
require 'method.php';
session_start();


?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.css">
    <title>Document</title>
</head>

<body>

    <div class="container">
        <?php



        $id_user = $_SESSION['id'];

        if (isset($_GET['id_p'])) {
            $id_per = $_GET['id_p'];
            $nom = $_GET['nom'];
            echo "<h1>Conversation avec $nom</h1>";


            if (isset($_SESSION['IsAcl'])) {
                $sql = "select * from messages where id_conv = (select id_conv from conversations where id_psy=$id_per and id_c=$id_user)";
            }else{
                $sql = "select * from messages where id_conv = (select id_conv from conversations where id_psy=$id_user and id_c=$id_per)";

            }
            $res = $cnx->query($sql);
            $messages = $res->fetchAll(PDO::FETCH_ASSOC);
        }

        echo "<div class='list-group'>";
        foreach ($messages as $value) {
            if ($value['id_sender'] == $id_per) {
                echo "<label>$nom</label>";
                echo "<li class='list-group-item list-group-item-action list-group-item-info'>" . $value['contenu'] . "</li>";
            } else {
                echo "<label>Vous</label>";
                echo "<li class='list-group-item list-group-item-action list-group-item-warning'>" . $value['contenu'] . "</li>";
            }
        }





        echo "
    <form action='chat.php?id_p=$id_per&nom=$nom' method='POST'>
        <input type='text' name='message'>
        <button type='submit' name='envoyer'>envoyer</button>
    
    </form>
    ";




        if (isset($_POST['envoyer'])) {

            $msg = $_POST['message'];
            if(isset($_SESSION['IsAcl'])){
            $sqlconv = "select id_conv from conversations where id_psy=$id_per and id_c=$id_user";
        }else{
            $sqlconv = "select id_conv from conversations where id_psy=$id_user and id_c=$id_per";

        }
            $res = $cnx->query($sqlconv);
            $conv = $res->fetch(PDO::FETCH_ASSOC);
            $idconv = $conv['id_conv'];
            $date = date("Y-n-j");
            $sql_ajouter = "Insert into messages values(null , '$msg' , '$date' ,  $id_user , $idconv)";
            $res = $cnx->exec($sql_ajouter);
        }
        ?>


    </div>

</body>

</html>