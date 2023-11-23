<?php
$conexao = mysqli_connect("localhost","root","","fisiform");

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}
?>