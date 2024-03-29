<?php
include('header.php');
?>


<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h4>Consultar Ingresos</h4>
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

                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>Valor</th>
                                <th>Fuente</th>
                                <th>Detalle</th>
                                <th>Fecha</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($libros as $libro) { ?>
                                <tr>
                                    <td><?php echo $libro['valor']; ?></td>
                                    <td><?php echo $libro['fuente']; ?></td>
                                    <td><?php echo $libro['detalle_i']; ?></td>
                                    <td><?php echo $libro['fecha']; ?></td>
                                    <td>

                                        <button class="btn btn-primary" onclick="btnUpdate('<?php echo $libro['id_in']; ?>', '<?php echo $libro['fuente']; ?>', '<?php echo $libro['detalle_i']; ?>', '<?php echo $libro['fecha']; ?>')" data-toggle="modal" data-target="#modal"><i class="bi bi-pencil"></i></button>

                                        <button class="btn btn-danger" onclick="btnDelete('<?php echo $libro['id_in']; ?>', '<?php echo $libro['valor']; ?>')" data-toggle="modal" data-target="#modald"><i class="bi bi-trash"></i></button>
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
                                    <form action="act.php" method="post">
                                        <p>Aquí puedes editar los detalles, si ingresaste un valor equivocado debes elimiar el registro.</p>
                                        <input class="form-control" type="hidden" name="id" id="id">
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
                                    <form action="act.php" method="post">
                                        <label>Al eliminar restaremos el valor ingresado.</label>
                                        <input class="form-control" type="hidden" name="ide" id="idEliminar" readonly>
                                        <input class="form-control" type="text" name="valor" id="valorAc" readonly>
                                        <input class="form-control btn-outline-danger" type="submit" name="btnE" value="Eliminar">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <script>
                        function btnUpdate(ok, dos, tres, cuatro) {
                            document.getElementById('id').value = ok;
                            document.getElementById('fuente').value = dos;
                            document.getElementById('detalle').value = tres;
                            document.getElementById('fechaIn').value = cuatro;
                        }

                        function btnDelete(id, valor) {
                            document.getElementById('idEliminar').value = id;
                            document.getElementById('valorAc').value = valor;
                        }
                    </script>
                </div>
            <?php } ?>
        </div>

        <div class="col-md-6">
            <h4>Consultar Egresos</h4>
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

                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>Valor</th>
                                <th>Detalle</th>
                                <th>Observación</th>
                                <th>Fecha</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($libros as $libro) { ?>
                                <tr>
                                    <td><?php echo $libro['monto']; ?></td>
                                    <td><?php echo $libro['detalle_e']; ?></td>
                                    <td><?php echo $libro['detalles']; ?></td>
                                    <td><?php echo $libro['fecha']; ?></td>
                                    <td>
                                        <button class="btn btn-primary" onclick="btnUpdateE('<?php echo $libro['id_eg']; ?>', '<?php echo $libro['detalle_e']; ?>', '<?php echo $libro['detalles']; ?>', '<?php echo $libro['fecha']; ?>')" data-toggle="modal" data-target="#modale"><i class="bi bi-pencil"></i></button>
                                        <button class="btn btn-danger" onclick="btnDeleteE('<?php echo $libro['id_eg']; ?>', '<?php echo $libro['monto']; ?>')" data-toggle="modal" data-target="#modaleD"><i class="bi bi-trash"></i></button>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                    <!-- Modal  Actualizar -->
                    <div class="modal fade" id="modale" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Actualizar</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="act.php" method="post">
                                        <p>Aquí puedes editar los detalles, si ingresaste un valor equivocado debes elimiar el registro.</p>
                                        <input class="form-control" type="hidden" name="id" id="ideg">
                                        <label>Fuente</label>
                                        <select class="form-control" type="text" name="fuente" id="detalle_e">
                                            <option value="Hogar">Hogar</option>
                                            <option value="Alimentación">Alimentación</option>
                                            <option value="Vestuario">Vestuario</option>
                                            <option value="Estudio">Estudio</option>
                                            <option value="Inversión">Inversión</option>
                                            <option value="Prestamos">Prestamos</option>
                                            <option value="Otro">Otro</option>
                                        </select>
                                        <label>Detalles</label>
                                        <input class="form-control" type="text" name="detalles" id="detalles">
                                        <label>Fecha</label>
                                        <input class="form-control" type="date" name="fecha" id="fechaEg">
                                        <input class="form-control btn-outline-success" type="submit" name="btnAe" value="Actualizar">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal  Eliminar -->
                    <div class="modal fade" id="modaleD" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Eliminar</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="act.php" method="post">
                                        <label>Al eliminar restableceremos el valor que se descontó anteriormente.</label>
                                        <input class="form-control" type="hidden" name="ide" id="idEliminar" readonly>
                                        <input class="form-control" type="text" name="valor" id="valorEg" readonly>
                                        <input class="form-control btn-outline-danger" type="submit" name="btnEe" value="Eliminar">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <script>
                        function btnUpdateE(ideg, dos, tres, cuatro) {
                            document.getElementById('ideg').value = ideg;
                            document.getElementById('detalle_e').value = dos;
                            document.getElementById('detalles').value = tres;
                            document.getElementById('fechaEg').value = cuatro;
                        }

                        function btnDeleteE(id, valor) {
                            document.getElementById('idEliminar').value = id;
                            document.getElementById('valorEg').value = valor;
                        }
                    </script>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<br />

<?php include("footer.php"); ?>