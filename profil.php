<?php

$con = mysqli_connect('localhost', 'root', '');
mysqli_select_db($con, 'siteweb');
 ?>
<html>
   <head>
      <title>TUTO PHP</title>
      <meta charset="utf-8">
   </head>
   <body>
      <div align="center">
         <h2>Profil de <?php echo $_SESSION['email']; ?></h2>
         <br /><br />
         <a href="editionprofil.php">Editer mon profil</a>
         <a href="deconnexion.php">Se déconnecter</a>
         
      </div>
   </body>
</html>
