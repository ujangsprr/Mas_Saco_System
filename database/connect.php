<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpswd = '';
$dbname = 'mas_saco';

$connection = mysqli_connect($dbhost, $dbuser, $dbpswd, $dbname);

if(!$connection) {
    die("Database connection failed");
}

?>
