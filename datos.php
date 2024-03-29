<?php
include('header.php');
?>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            </br>
            <h4>Registro Ingresos</h4>
            <canvas id="chartIn" width="100%" height="100%"></canvas>
        </div>
        <div class="col-md-6">
            </br>
            <h4>Registro Egresos</h4>
            <canvas id="chartEg" width="100%" height="100%"></canvas>
        </div>

        <div class="col-md-6">
            <?php
            include("abrir_conexion.php");
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as nomina FROM $tablaIngresos WHERE id_usr = '$idusr' AND fuente = 'Nómina'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $nomina = $consulta['nomina'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as indepen FROM $tablaIngresos WHERE id_usr = '$idusr' AND fuente = 'Independiente'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $indepen = $consulta['indepen'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as devol FROM $tablaIngresos WHERE id_usr = '$idusr' AND fuente = 'Devoluciones'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $devol = $consulta['devol'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as otro FROM $tablaIngresos WHERE id_usr = '$idusr' AND fuente = 'Otro'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $otroi = $consulta['otro'];
            }
            include("cerrar_conexion.php");
            ?>
        </div>
        <div class="col-md-6">
            <?php
            include("abrir_conexion.php");
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as hogar FROM $tablaEgresos WHERE id_usr = '$idusr' AND detalle_e = 'Hogar'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $hogar = $consulta['hogar'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as alim FROM $tablaEgresos WHERE id_usr = '$idusr' AND detalle_e = 'Alimentación'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $alim = $consulta['alim'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as ves FROM $tablaEgresos WHERE id_usr = '$idusr' AND detalle_e = 'Vestuario'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $ves = $consulta['ves'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as estudio FROM $tablaEgresos WHERE id_usr = '$idusr' AND detalle_e = 'Estudio'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $estudio = $consulta['estudio'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as inver FROM $tablaEgresos WHERE id_usr = '$idusr' AND detalle_e = 'Inversión'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $inver = $consulta['inver'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as pres FROM $tablaEgresos WHERE id_usr = '$idusr' AND detalle_e = 'Prestamos'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $pres = $consulta['pres'];
            }
            $resultados = mysqli_query($conexion, "SELECT COUNT(*) as otro FROM $tablaEgresos WHERE id_usr = '$idusr' AND detalle_e = 'Otro'");
            while ($consulta = mysqli_fetch_array($resultados)) {
                $otroe = $consulta['otro'];
            }
            include("cerrar_conexion.php");
            ?>
        </div>
    </div>
</div>
<br />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>



<script>
    var nom = <?php echo $nomina ?>;
    var ind = <?php echo $indepen ?>;
    var dev = <?php echo $devol ?>;
    var otr = <?php echo $otroi ?>;

    var ctx = document.getElementById("chartIn").getContext("2d");
    var chartIn = new Chart(ctx, {
        type: "polarArea",
        data: {
            labels: ['Nomina', 'Independiente', 'Devoluciones', 'Otro'],
            datasets: [{
                data: [nom, ind, dev, otr],
                backgroundColor: [
                    'rgb(28, 87, 53)',
                    'rgb(38, 115, 70)',
                    'rgb(47, 144, 88)',
                    'rgb(56, 173, 105)'
                ]
            }]
        }
    });
</script>
<script>
    var hog = <?php echo $hogar ?>;
    var ali = <?php echo $alim ?>;
    var ves = <?php echo $ves ?>;
    var est = <?php echo $estudio ?>;
    var inv = <?php echo $inver ?>;
    var pres = <?php echo $pres ?>;
    var otre = <?php echo $otroe ?>;

    var ctxe = document.getElementById("chartEg").getContext("2d");
    var chartEg = new Chart(ctxe, {
        type: "polarArea",
        data: {
            labels: ['Hogar', 'Alimentación', 'Vestuario', 'Estudio', 'Inversión', 'Prestamo', 'Otro'],
            datasets: [{
                data: [hog, ali, ves, est, inv, pres, otre],
                backgroundColor: [
                    'rgb(88, 30, 30)',
                    'rgb(117, 40, 40)',
                    'rgb(147, 50, 50)',
                    'rgb(176, 60, 60)',
                    'rgb(206, 70, 70)',
                    'rgb(235, 80, 80)',
                    'rgb(250, 90, 90)'
                ]
            }]
        }
    });
</script>

<?php include("footer.php"); ?>