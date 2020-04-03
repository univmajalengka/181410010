<?php

// koneksi ke databse

$koneksi = mysqli_connect("localhost","root","","perpustakaan");

// ambil data dari tabel aldi

$result= mysqli_query ($koneksi,"SELECT * FROM tb_buku");

?>



<!DOCTYPE html>
<html>
<head>
    <title>Halaman Buku</title>

        <link href="responsive.css" rel="stylesheet" />
</head>
<body>
    <h1 class="text-center">Daftar Perpustakaan</h1>
    <a href="index.php" class="btn btn-primary">Halaman Perpustakaan</a>
    <table  id="example" class="table table-bordered table-striped dt-responsive nowrap" style="width:100%;">
        <thead>
        <tr>
            <th>Kd_Buku</th>
            <th>Kd_Penerbit</th>
            <th>Jenis_Buku</th>
            <th>Judul_Buku</th>
            <th>Nama_Pengarang</th>
            <th>Nama_Penerbit</th>
            <th>Tempat_Terbit</th>
            <th>Status_Buku</th>
            <th>Tahun_Terbit</th>
        </tr>
</thead>
<tbody>
       <?php while($row=mysqli_fetch_assoc($result)){ ?>
        <tr>
            <td><?= $row['Kd_Buku']; ?></td>
            <td><?= $row['Kd_Penerbit']; ?></td>
            <td><?= $row['Jenis_Buku']; ?></td>
            <td><?= $row['Judul_Buku']; ?></td>
            <td><?= $row['Nama_Pengarang']; ?></td>
            <td><?= $row['Nama_Penerbit']; ?></td>
            <td><?= $row['Tempat_Terbit']; ?></td>
            <td><?= $row['Status_Buku']; ?></td>
            <td><?= $row['Tahun_Terbit']; ?></td>
        </tr>
        <?php } ?>
    </tbody>
    </table>

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