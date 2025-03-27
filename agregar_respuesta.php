<?php
  include "./conexion.php";
  $fecha = date("Y-m-d");
  $sql = "INSERT INTO respuesta (id_tema, respuesta, autor, fecha, pais, me_gusta) VALUES('$_POST[oculto]','$_POST[respuesta]','$_POST[autor]','$fecha', '$_POST[pais]', '$_POST[me_gusta]')";
  if (mysqli_query($conex, $sql)) {
    print "<p style=
            'text-align:center; font-size:2rem;'
          >Se insertó con éxito</p>";
  } else {
    print "<p style=
            'text-align:center; font-size:2rem;'
          >Estamos en mantenimiento</p>";
  }
?>

<meta http-equiv="refresh" content="2;URL=./temas.php?cual=<?php print $_POST['oculto']; ?>" />