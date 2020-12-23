<?php

require_once 'connexion.php';
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
        <h1 class="text-center my-5">Connexion</h1>
        <form action="login.php" method="POST">
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="text" name="email" class="form-control">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button name='connexion' type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <?php

    if (isset($_POST['connexion'])) {
        $adr = $_POST['email'];
        $pass = $_POST['password'];
        $sql = "Select id_p , email_p , mot_de_passe from personnes where email_p='$adr' and mot_de_passe='$pass'";
        $res = $cnx->query($sql);
        $resultat = $res->fetch(PDO::FETCH_ASSOC);

        if ($resultat) {
            $_SESSION['id_personne'] = $resultat['id_p'];
            header("location:Conversations.php");
        } else {
            echo
                "
                <div class='alert alert-dismissible alert-danger'>
                    <button type='button' class='close' data-dismiss='alert'>&times;</button>
                    <strong>Oh snap!</strong> <a href='#' class='alert-link'>Change a few things up</a> and try submitting again.
                </div>
                ";
        }
    }

    ?>






</body>

</html>