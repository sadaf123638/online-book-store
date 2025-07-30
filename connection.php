<?php

$host = "localhost";
$username = "root";
$password = "";
$database = "onlinebook_store";

// create connection

$conn = mysqli_connect($host, $username, $password, $database);
if($conn->connect_error){
    die("Connection failed: " . $conn->connect_error);
}
?>