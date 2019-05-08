<?php

$serverName = 'localhost';
$userName = 'root';
$password = '';
$dbName = 'pnc_pracitice_database';

$connection = mysqli_connect($serverName, $userName, $password, $dbName);

if(!$connection) {
    die("Can't connect to Database" . mysqli_connect_error);
}