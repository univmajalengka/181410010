<?php
    include "koneksi.php";
    $username = strtolwer(stripcslashes($_POST['username']));
    $password = mysqli_real_escape_string($koneksi, $_POST['password']);
    $password = password_hash($password, PASSWORD_DEAFULT);

    $result = mysqli_query($koneksi, "SELECT username FROM user WHERE username = '$USERNAME");
    if(mysqli_fetch_array($result)){
    	echo "<script>
    	    alert('Username Sudah Digunakan');
    	    window,location = 'register.php';
    	</script>";
    	return false;
    }

    mysqli_qeury($koneksi, "INSERT INTO user VALUES('', '$username', '$password')");
    header("location:login.php");

?>