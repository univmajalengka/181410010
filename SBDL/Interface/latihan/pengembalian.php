<?php

// koneksi ke databse

$koneksi = mysqli_connect("localhost","root","","perpustakaan");

// ambil data dari tabel aldi

$result= mysqli_query ($koneksi,"SELECT * FROM tb_pengembalian");

?>



<!DOCTYPE html>
<html>
<head>
    <title>Halaman Pengembalian</title>

        <link href="responsive.css" rel="stylesheet" />
</head>
<body>
    <h1 class="text-center">Daftar Perpustakaan</h1>
    <a href="index.php" class="btn btn-primary">Halaman Perpustakaan</a>
    <table  id="example" class="table table-bordered table-striped dt-responsive nowrap" style="width:100%;">
        <thead>
        <tr>
            <th>No_Kembali</th>
            <th>No_Pinjam</th>
            <th>No_Anggota</th>
            <th>Tgl_Kembali</th>
            <th>Status_Pengembalian</th>
            <th>Keterlambatan</th>
            <th>Jml_Denda</th>
        </tr>
</thead>
<tbody>
       <?php while($row=mysqli_fetch_assoc($result)){ ?>
        <tr>
            <td><?= $row['No_Kembali']; ?></td>
            <td><?= $row['No_Pinjam']; ?></td>
            <td><?= $row['No_Anggota']; ?></td>
            <td><?= $row['Tgl_Kembali']; ?></td>
            <td><?= $row['Status_Pengembalian']; ?></td>
            <td><?= $row['Keterlambatan']; ?></td>
            <td><?= $row['Jml_Denda']; ?></td>
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