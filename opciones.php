<?php
include('header.php');
?>
<div class="container">
  <div class="row">
    <div class="col-sm-12">
      <p class="my-3">A continuación podrás crear las opciones desplegables para organizar tus ingresos y tus gastos. Estas opciones aparecerán listadas cuando vayas a crear tus registros.</p>
    </div>
    <div class="col-sm-6">
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
        }
        ?>

      </form>
    </div>
    <div class="col-sm-6">
      <h2>Listas creadas:</h2>
      <?php
      // Consultar tabla opciones

      $idusr = $_SESSION['idusr'];
      include("abrir_conexion.php");

      $sql = "SELECT * FROM $tablaOpciones WHERE id_usr = '$idusr'";
      $resultado = mysqli_query($conexion, $sql) or die(mysql_error());
      $libros = array();
      while ($rows = mysqli_fetch_assoc($resultado)) {
        $libros[] = $rows;
      }
      include("cerrar_conexion.php");
      ?>
      <table class="table table-striped table-bordered">
        <thead class="thead-dark">
          <tr>
            <th>Formulario</th>
            <th>Opción</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($libros as $libro) { ?>
            <tr>
              <td><?php echo $libro['formulario']; ?></td>
              <td><?php echo $libro['opcion']; ?></td>
              <td>
                <button class="btn btn-danger" onclick="btnDeleteE('<?php echo $libro['id_eg']; ?>', '<?php echo $libro['monto']; ?>')" data-toggle="modal" data-target="#modaleD"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                  </svg></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>

    </div>
  </div>
</div>

<?php include("footer.php"); ?>