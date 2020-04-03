<?php

// koneksi ke databse
include 'koneksi.php';
session_start();
if(!$_SESSION['username']){
    header("Location:login.php");
}
$result= mysqli_query ($koneksi,"SELECT * FROM tb_anggota");

?>



<!DOCTYPE html>
<html>
<head>
    <title>Halaman Admin</title>

        <link href="responsive.css" rel="stylesheet" />
</head>
<body>
    <h1 class="text-center">Daftar Perpustakaan</h1>
    <a href="buku.php" class="btn btn-primary">Halaman Buku</a>
    <a href="peminjaman.php" class="btn btn-primary">Halaman Peminjaman</a>
    <a href="penerbit.php" class="btn btn-primary">Halaman Penerbit</a>
    <a href="pengembalian.php" class="btn btn-primary">Halaman Pengembalian</a>
    <table  id="example" class="table table-bordered table-striped dt-responsive nowrap" style="width:100%;">
        <thead>
        <tr>
            <th>No_Anggota</th>
            <th>Nis</th>
            <th>Nama_Anggota</th>
            <th>Jenis_Kelamin</th>
            <th>Alamat</th>
            <th>Tempat_Lahir</th>
            <th>Tanggal_Lahir</th>
            <th>No_Telpon</th>
            <th>Kelas</th>
            <th>Masa_Berlaku</th>
            <th>Status_Peminjaman</th>
        </tr>
</thead>
<tbody>
       <?php while($row=mysqli_fetch_assoc($result)){ ?>
        <tr>
            <td><?= $row['No_Anggota']; ?></td>
            <td><?= $row['Nis']; ?></td>
            <td><?= $row['Nama_Anggota']; ?></td>
            <td><?= $row['Jenis_Kelamin']; ?></td>
            <td><?= $row['Alamat']; ?></td>
            <td><?= $row['Tempat_Lahir']; ?></td>
            <td><?= $row['Tgl_Lahir']; ?></td>
            <td><?= $row['No_Telp']; ?></td>
            <td><?= $row['Kelas']; ?></td>
            <td><?= $row['Masa_Berlaku']; ?></td>
            <td><?= $row['Status_Pinjam']; ?></td>
        </tr>
        <?php } ?>
    </tbody>
    </table>
    <a href="logout.php" class="btn btn-danger">LOGOUT</a>
        <script src="jquery-3.3.1.js"></script>
        <script src="jquery.dataTables.min.js"></script>
        <script src="dataTables.bootstrap4.min.js"></script>
        <script src="dataTables.responsive.min.js"></script>
        <script src="responsive.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#example').DataTable();
            } );
        </script>
</body>
</html>