<?PHP
include "../../core/articleC.php";
include "../../entities/article.php";
include "header.php";
if (isset($_GET['date_a'])){
    $aC =new articleC();
    echo "1";
    $result=$aC->recupererarticle($_GET['date_a']);
    echo "1";
    foreach($result as $emp){
        $date_a=$emp['date_a'];
        $titre=$emp['titre'];
        $editor1=$emp['editor1'];
        $image=$emp['image'];
    }
}
else echo"wiiiiiiiiiiiiiiw";

?>
<head>
    <script src="//cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
</head>
<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#">pub</a>
            </li>
            <li class="breadcrumb-item active">Modifier publication</li>
        </ol>
        <!-- Example DataTables Card-->
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Modifier publication</div>
            <div class="card-body">
                <form method="POST" action="modifArt.php" >
                    <div class="form-group">
                        <div class="form-row">

                            <label for="exampleInputName">date ajout</label>
                            <input class="form-control" name="date_a" type="date"  value="" required>

                        </div>
                        <div class="form-row">

                            <label for="exampleInputLastName">titre</label>
                            <input class="form-control" name="titre"  type="text"   value=""   required>

                        </div>

                        <div class="form-row">
                        <label for="exampleInputEmail1">description</label>
                        <textarea name="editor1"></textarea>
                        
                    </div>
                    <script src="ckeditor/ckeditor.js"></script>
                    <script>CKEDITOR.replace("editor1");</script>
                        </div>

                        <div class="form-row">

                        <label for="exampleInputPassword1">Image</label>
                            <input type="file" name="image" tabindex="4" accept="image/png, image/jpeg"   required>

                           

                        </div>
                       
                        <div class="form-row">
                        <input class="form-control" type="hidden" name="date_a" value="">
                        <input class="form-control" type="submit" name="modifier" value="modifier">
                        </div>
                    </div>
            </form>
            </div>

        </div>
    </div>

</div>

<?php include 'footer.php' ; ?>