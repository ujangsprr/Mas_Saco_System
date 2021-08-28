<?php
include 'connect.php';

$id = mysqli_real_escape_string($connection, $_REQUEST['id']);
$nama = mysqli_real_escape_string($connection, $_REQUEST['nama']);
$waktu = mysqli_real_escape_string($connection, $_REQUEST['waktu']);
$hari = mysqli_real_escape_string($connection, $_REQUEST['hari']);
$tanggal = mysqli_real_escape_string($connection, $_REQUEST['tanggal']);
$keramaian = mysqli_real_escape_string($connection, $_REQUEST['keramaian']);

$sql1 = "UPDATE `tempat_swab` SET `waktu` = '$waktu', `tanggal` = '$tanggal', `keramaian` = '$keramaian' WHERE `tempat_swab`.`id` = $id;";
$sql2 = "INSERT INTO `$nama` (`id`, `waktu`, `hari`, `tanggal`, `keramaian`) VALUES (NULL, '$waktu', '$hari', '$tanggal', '$keramaian');";

if(mysqli_query($connection, $sql1) && mysqli_query($connection, $sql2)){
    echo "Records added successfully.";
} else{
    echo mysqli_error($connection);
}

mysqli_close($connection);
?>