<?php

require_once 'connexion.php';
session_start();


//get idClient or id_psy

$id = $_SESSION['id_personne'];

$sql_psy = "select id_psy from psychiatres where id_p=$id";
$res = $cnx->query($sql_psy);
$res_psy = $res->fetch(PDO::FETCH_ASSOC);
if ($res_psy) {
    $id_psy = $res_psy['id_psy'];
    $_SESSION['id'] = $id_psy;
    $_SESSION['IsApsy'] = 1;
}


$sql_c = "select id_c from clients where id_p=$id";
$res = $cnx->query($sql_c);
$res_c = $res->fetch(PDO::FETCH_ASSOC);
if ($res_c) {
    $id_c = $res_c['id_c'];
    $_SESSION['id'] = $id_c;
    $_SESSION['IsAcl'] = 1;
}

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
        <h1 class="my-3">Conversations</h1>
        <?php


        if (isset($id_psy)) {
            $sql_conv = "select id_c from conversations where id_psy=$id_psy";
        } else {
            $sql_conv = "select id_psy from conversations where id_c=$id_c";
        }

        $res = $cnx->query($sql_conv);
        $resultat = $res->fetchAll(PDO::FETCH_ASSOC);



        if (isset($id_c)) {
            foreach ($resultat as $value) {
                $idd = $value['id_psy'];
                $sql_personne = "select nom_p from personnes where id_p = (select id_p from psychiatres where id_psy=$idd)";
                $res = $cnx->query($sql_personne);
                $resultat = $res->fetch(PDO::FETCH_ASSOC);
                $nom_p = $resultat['nom_p'];
                
                echo "<a href='chat.php?id_p=$idd&nom=$nom_p'>$nom_p</a>";
                echo "<br>";
            }
        } else if (isset($id_psy)) {
            foreach ($resultat as $value) {
                $idd = $value['id_c'];
                $sql_personne = "select nom_p from personnes where id_p = (select id_p from clients where id_c=$idd)";
                $res = $cnx->query($sql_personne);
                $resultat = $res->fetch(PDO::FETCH_ASSOC);
                $nom_p = $resultat['nom_p'];
                echo "<a href='chat.php?id_p=$idd&nom=$nom_p'>$nom_p</a>";
                echo "<br>";
            }
        }



        ?>
    </div>

</body>

</html>