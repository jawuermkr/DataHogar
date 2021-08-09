<?php

    $host = "localhost";
    $database = "dh";
    $name = "root";
    $clave = "Bogota2021*";

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
