<?php 

	$koneksi = new mysqli('localhost', 'root', '', 'perpustakaan');
	if(!$koneksi){
		echo "GAGAL TERHUBUNG KE DATABASE" . '' . mysqli_error();
	}
 ?>