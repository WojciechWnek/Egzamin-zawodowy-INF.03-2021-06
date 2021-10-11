<?php
$server = "localhost";
$user = "root";
$password = "";
$db_name = "baza";

$conn = mysqli_connect($server, $user, $password, $db_name);

$data = $_POST['data'];
$ile = $_POST['ile'];
$telefon = $_POST['telefon'];

var_dump($_POST);

$sql = "INSERT INTO rezerwacje (data_rez, liczba_osob, telefon) VALUES ( '$data', '$ile', '$telefon')";

mysqli_query($conn, $sql);

mysqli_close($conn);

echo "Dodano rezerwację do bazy";