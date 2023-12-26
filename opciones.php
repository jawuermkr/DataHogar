<?php
include('header.php');    
?>
<div class="container">
  <div class="row">
      <div class="col-sm-12">
        <p class="my-3">A continuación podrás crear las opciones desplegables para organizar tus ingresos y tus gastos. Estas opciones aparecerán listadas cuando vayas a crear tus registros.</p>  
        <h2>Tus opciones</h2>
          <form action="opciones.php" method="post">
            <label>Elige el formulario</label>
            <select class="form-control" type="text" name="formulario" required>
              <option value="" selected="true" disabled="disabled">Seleccione Formulario</option>
              <option value="Ingresos">Ingresos</option>
              <option value="Egresos">Egresos</option>
            </select>
            <label>Digita tu nueva opción</label>
              <input class="form-control" type="text" name="opcion">
              <input class="form-control btn-outline-success" type="submit" name="btn-in" value="Actualizar">
              <?php
              // INSERTAR
              if (isset($_POST['btn-in'])) {

                  $idusr = $_SESSION['idusr'];
                  $formulario = $_POST['formulario'];
                  $opcion = $_POST['opcion'];

                  if ($formulario == "" || $opcion == "") {
                      echo "Complete todos los campos.";
                  } else {
                      include("abrir_conexion.php");
                      // INSERTO VALORES DE INGRESOS
                      $conexion->query("INSERT INTO $tablaOpciones (id_usr,formulario,opcion) values('$idusr','$formulario','$opcion')");
                  }

                  include("cerrar_conexion.php");
                  header('Location:dashboard.php');
              }
              ?>

          </form>
      </div>
  </div>
</div>
<br />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>

</html>
