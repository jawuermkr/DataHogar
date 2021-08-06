<?php
session_start();
ob_start();

if ($_SESSION['correcto'] <> 1) {
    header('Location:salir.php');
}

$idusr = $_SESSION['idusr'];
?>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalabel=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>DataHogar - Cuentas claras, control a la mano.</title>
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="dashboard.php">DataHogar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="dashboard.php">Inicio</a>
                </li>
                <li class="navbar-nav mr-auto">
                    <a class="nav-link" href="datos.php">Registros</a>
                </li>
                <li>
                    <a class="nav-link" href="edita.php">Editar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="salir.php">Salir</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Consultar Ingresos</h2>
                <form action="edita.php" method="post">
                    <input class="form-control" type="date" name="fecI" value="<?php echo date("Y-m-d"); ?>">
                    <input class="form-control" type="date" name="fecF" value="<?php echo date("Y-m-d"); ?>">
                    <input class="form-control btn-outline-primary" type="submit" name="btnI" value="Mostrar">
                </form>
            </div>
            <div class="col-md-6">
                <?php
                // Consultar tabla ingresos
                if (isset($_POST['btnI'])) {

                    $fechI = $_POST['fecI'];
                    $fechF = $_POST['fecF'];


                    include("abrir_conexion.php");

                    $sql = "SELECT * FROM $tablaIngresos WHERE (fecha BETWEEN '$fechI' AND '$fechF') AND (id_usr = '$idusr')";
                    $resultado = mysqli_query($conexion, $sql) or die(mysql_error());
                    $libros = array();
                    while ($rows = mysqli_fetch_assoc($resultado)) {
                        $libros[] = $rows;
                    }
                    include("cerrar_conexion.php");
                ?>

                    <h2>Consulta Detalles Ingresos</h2>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead class="thead-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Fecha</th>
                                    <th>Fuente</th>
                                    <th>Valor</th>
                                    <th>Detalle</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($libros as $libro) { ?>
                                    <tr>
                                        <td><?php echo $libro['id_in']; ?></td>
                                        <td><?php echo $libro['valor']; ?></td>
                                        <td><?php echo $libro['fuente']; ?></td>
                                        <td><?php echo $libro['detalle_i']; ?></td>
                                        <td><?php echo $libro['fecha']; ?></td>
                                        <td>

                                            <button class="btn btn-primary" onclick="btnUpdate('<?php echo $libro['id_in']; ?>', '<?php echo $libro['valor']; ?>', '<?php echo $libro['fuente']; ?>', '<?php echo $libro['detalle_i']; ?>', '<?php echo $libro['fecha']; ?>')" data-toggle="modal" data-target="#modal"> OK</button>
                                            <button class="btn btn-danger" onclick="btnDelete('<?php echo $libro['id_in']; ?>')" data-toggle="modal" data-target="#modald"> OK</button>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>

                        <!-- Modal  Actualizar -->
                        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Actualizar</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="edita.php" method="post">
                                            <label>ID</label>
                                            <input class="form-control" type="text" name="id" id="id" disabled>
                                            <label>Valor</label>
                                            <input class="form-control" type="text" name="valor" id="ingreso">
                                            <label>Fuente</label>
                                            <select class="form-control" type="text" name="fuente" id="fuente">
                                                <option value="Nómina">Nómina</option>
                                                <option value="Independiente">Independiente</option>
                                                <option value="Devoluciones">Devoluciones</option>
                                                <option value="Otro">Otro</option>
                                            </select>
                                            <label>Detalles</label>
                                            <input class="form-control" type="text" name="detalle_i" id="detalle">
                                            <label>Fecha</label>
                                            <input class="form-control" type="date" name="fecha" id="fechaIn">
                                            <input class="form-control btn-outline-success" type="submit" name="btnA" value="Actualizar">
                                        </form>
                                        <?php
                                        // INSERTAR
                                        if (isset($_POST['btnA'])) {

                                            $id = $_POST['id'];
                                            $valor = $_POST['valor'];
                                            $fuente = $_POST['fuente'];
                                            $detalle_i = $_POST['detalle_i'];
                                            $fecha = $_POST['fecha'];

                                            include("abrir_conexion.php");

                                            $_UPDATE_SQL = "UPDATE $tablaIngresos Set
                                                valor = '$valor',
                                                fuente = '$fuente',
                                                detalle_i = '$detalle_i',
                                                fecha = '$fecha' WHERE id_in = '$id'";
                                        }
                                        mysqli_query($conexion, $_UPDATE_SQL);
                                        include("cerrar_conexion.php");
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal  Eliminar -->
                        <div class="modal fade" id="modald" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Eliminar</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="edita.php" method="post">
                                            <label>Se eliminará el ID</label>
                                            <input class="form-control" type="text" name="ide" id="idEliminar" readonly>
                                            <input class="form-control btn-outline-danger" type="submit" name="btnE" value="Eliminar">
                                        </form>
                                        <?php
                                        // ELIMINAR
                                        if (isset($_POST['btnE'])) {

                                            $id = $_POST['ide'];

                                            include("abrir_conexion.php");

                                            $_DELETE_SQL = "DELETE FROM $tablaIngresos WHERE id_in = '$id'";
                                            mysqli_query($conexion, $_DELETE_SQL);
                                        }
                                        mysqli_query($conexion, $_UPDATE_SQL);
                                        include("cerrar_conexion.php");
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <script>
                            function btnUpdate(ok, un, dos, tres, cuatro) {
                                document.getElementById('id').value = ok;
                                document.getElementById('ingreso').value = un;
                                document.getElementById('fuente').value = dos;
                                document.getElementById('detalle').value = tres;
                                document.getElementById('fechaIn').value = cuatro;
                            }

                            function btnDelete(id) {
                                document.getElementById('idEliminar').value = id;
                            }
                        </script>
                    </div>
                <?php } ?>
            </div>

            <div class="col-md-6">
                <h2>Consultar Engresos</h2>
                <form action="edita.php" method="post">
                    <input class="form-control" type="date" name="fecI" value="<?php echo date("Y-m-d"); ?>">
                    <input class="form-control" type="date" name="fecF" value="<?php echo date("Y-m-d"); ?>">
                    <input class="form-control btn-outline-primary" type="submit" name="btnE" value="Mostrar">
                </form>
            </div>
            <div class="col-md-6">
                <?php
                // Consultar tabla egresos
                if (isset($_POST['btnE'])) {

                    $fechI = $_POST['fecI'];
                    $fechF = $_POST['fecF'];


                    include("abrir_conexion.php");

                    $sql = "SELECT * FROM $tablaEgresos WHERE (fecha BETWEEN '$fechI' AND '$fechF') AND (id_usr = '$idusr')";
                    $resultado = mysqli_query($conexion, $sql) or die(mysql_error());
                    $libros = array();
                    while ($rows = mysqli_fetch_assoc($resultado)) {
                        $libros[] = $rows;
                    }
                    include("cerrar_conexion.php");
                ?>

                    <h2>Consulta Detalles Ingresos</h2>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead class="thead-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Fecha</th>
                                    <th>Fuente</th>
                                    <th>Valor</th>
                                    <th>Detalle</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($libros as $libro) { ?>
                                    <tr>
                                        <td id="id"><?php echo $libro['id_usr']; ?></td>
                                        <td><?php echo $libro['fecha']; ?></td>
                                        <td><?php echo $libro['fuente']; ?></td>
                                        <td><?php echo $libro['valor']; ?></td>
                                        <td><?php echo $libro['detalle_i']; ?></td>
                                        <td>
                                            <button class="btn btn-primary" onclick="btnUpdate()">edita</button>
                                            <button class="btn btn-danger">elimina</button>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>

                        <script>
                            function btnUpdate() {
                                var id = $libro['id'];
                                alert(id);
                            }
                        </script>


                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <br />

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>

</html>