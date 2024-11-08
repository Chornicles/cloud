<?php

require_once('function/koneksi.php');

$process = isset($_GET['process']) ? ($_GET['process']) : false;
$status = isset($_GET['status']) ? ($_GET['status']) : false;
?>


<?php if ($process == 'success') : ?>
    <div class="alert alert-success" role="alert">
        Data behasil dimasukan
    </div>

<?php endif; ?>
<?php if ($status == 'success') : ?>
    <div class="alert alert-success" role="alert">
        Data behasil dihapus
    </div>

<?php endif; ?>

<!-- mengambil data dari database -->
<?php

$Buku = mysqli_query($koneksi, "SELECT * FROM Buku");

?>

<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nama</th>
                            <th scope="col">NIM</th>
                            <th scope="col">Judul Buku</th>
                            <th scope="col">Tanggal Pengambilan</th>
                            <th scope="col">Tanggal Pengembalian</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1; ?>
                        <?php foreach ($Buku as $p) : ?>
                            <tr>
                                <th scope="row"><?= $no++; ?></th>
                                <td><?= $p['nama'] ?></td>
                                <td><?= $p['nim'] ?></td>
                                <td><?= $p['judul_buku'] ?></td>
                                <td><?= $p['tanggal_pengambilan'] ?></td>
                                <td><?= $p['tanggal_pengembalian'] ?></td>
                                <td>
                                    <a class="btn btn-danger badge" href="<?= BASE_URL . 'process/process_delete.php?id=' . $p['id'] ?>">Delete</a>
                                    <a class="btn btn-info badge" href="<?= BASE_URL . 'dashboard.php?page=edit&id=' . $p['id'] ?>">Edit</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>