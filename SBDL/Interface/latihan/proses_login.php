<?php 

	session_start();
	include 'koneksi.php';
	$username = $_POST['username'];
	$password = $_POST['password'];
	$pass = md5($password);

	$query = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password='$pass'");
	if (mysqli_num_rows($query) == 1) {
		$_SESSION['username'] = $username;
		header("Location:index.php");
	}

 ?>