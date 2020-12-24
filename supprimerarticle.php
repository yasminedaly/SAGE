<?php
include "../../entities/article.php";
include "../../core/articleC.php";
if (isset($_GET['titre']))
{
    echo"verifir";
    $valeur=$_GET['titre'];

    $pe = new articleC();
    $pe->supprimer_a($valeur);
    header('Location: afficherarticle.php');
}
else
echo "verifier champ!!";
?>