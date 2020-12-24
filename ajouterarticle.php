
<?PHP
include "header.php";


?>
<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#">Gestion des publications</a>
            </li>
            <li class="breadcrumb-item active">Ajouter publication</li>
        </ol>
        <!-- Example DataTables Card-->
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Ajouter publication</div>
            <div class="card-body">
                <form method="POST" action="formarticle.php" >
                    <div class="form-group">
                        <div class="form-row">

                            <label for="exampleInputName">Date d'ajout</label>
                            <input class="form-control" name="date_a" type="date" aria-describedby="nameHelp"  required>

                        </div>
                        <div class="form-row">

                            <label for="exampleInputLastName">Titre</label>
                            <input class="form-control" name="titre"  type="text" aria-describedby="nameHelp"   required>

                        </div>
                    </div>
                    <div class="form-row">

                    <div class="form-row">
                    

                        <label for="exampleInputEmail1">pub</label>
                        <textarea name="editor1"></textarea>
                        
                    </div>
                    <script src="ckeditor/ckeditor.js"></script>
                    <script>CKEDITOR.replace("editor1");</script>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                        </div>




                        
                            <label for="exampleInputPassword1">Image</label>
                            <input type="file" name="image" tabindex="4" accept="image/png, image/jpeg"   required>

                        </div>
                       
                    </div>
                    <input class="form-control" type="submit" name="ajouter" value="ajouter">
                </form>
            </div>


        </div>
    </div>

</div>

<?php include "footer.php";?>