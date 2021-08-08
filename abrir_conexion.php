<?php

    $host = "localhost";
    $database = "u917903720_dh";
    $name = "u917903720_dh";
    $clave = "D4t4H0g4r";

    // Tablas

    $tablaUsuarios = "usuarios";
    $tablaIngresos = "ingresos";
    $tablaEgresos = "egresos";
    $tablaTotal = "total";

    error_reporting(1);

    $conexion = new mysqli($host, $name, $clave, $database);

    if ($conexion->errno) {
        echo "No se puede acceder a la base de datos";
        exit();
    }
