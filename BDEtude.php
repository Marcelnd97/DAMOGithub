<?php
function db_connexion()
{
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db = "bdEtudiant";

	return new mysqli($servername, $username, $password, $password, $db,
		"3308");
}
?>