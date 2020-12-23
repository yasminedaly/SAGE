<?php

function rechercher($resultat , $cnx , $x , $y){
    foreach ($resultat as $value) {
        
        $idd = $value[$y];
        $sql_personne = "select nom_p from personnes where id_p = (select id_p from $x where $y=$idd)";
        $res = $cnx->query($sql_personne);
        $resultat = $res->fetch(PDO::FETCH_ASSOC);
        $nom_p = $resultat['nom_p'];
        
        echo "<a href='chat.php?id_p=$idd'>$nom_p</a>";
        echo "<br>";

}
}



function isAclient($id , $cnx){
    $sql = "select * from client where id_c = $id";
    $res = $cnx->query($sql);
    $resultat = $res->fetch(PDO::FETCH_ASSOC);

    if($resultat){
        return true;
    }else{
        return false;
    }

}

function isApsy($id , $cnx){
    $sql = "select * from psychiatres where id_psy = $id";
    $res = $cnx->query($sql);
    $resultat = $res->fetch(PDO::FETCH_ASSOC);

    if($resultat){
        return true;
    }else{
        return false;
    }

}



