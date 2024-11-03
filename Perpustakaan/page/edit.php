<?php

require_once('function/helper.php');
require_once('function/koneksi.php');

$process = isset($_GET['process']) ? ($_GET['process']) : false;
if ($_SESSION["id"] == null) {
    header("location: " . BASE_URL);
    exit();
}

$id = isset($_GET['id']) ? ($_GET['id']) : false;

$Buku = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM Buku WHERE id = $id"));

$error =  isset($_GET['emptyform']) ? ($_GET['emptyform']) : false;

?>


<div class="row">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <?php
                if ($error == "true") : ?>
                    <div class="alert alert-danger" role="alert">
                        Proses gagal, pastikan semuar formulir terisi
                    </div>
                <?php endif; ?>
                <div class="row">
                    <h1 style="text-align: center; color: #185ADB;">Form Edit Buku</h1>
                </div>
                <form method="POST" action="<?= BASE_URL . 'process/process_edit.php' ?>">
                    <input name="id" value="<?= $Buku['id'] ?>" type="hidden">
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" value="<?= $Buku['nama'] ?>">
                    </div>
                    <div class="mb-3">
                        <label for="nim" class="form-label">NIM</label>
                        <input type="text" class="form-control" id="nim" name="nim" value="<?= $Buku['nim'] ?>">
                    </div>
                    <div class="mb-3">
                        <label for="judul_buku" class="form-label">Judul Buku</label>
                        <input type="text" class="form-control" id="judul_buku" name="judul_buku" value="<?= $Buku['judul_buku'] ?>">
                    </div>
                    <div class="mb-3">
                        <label for="tanggal_pengambilan" class="form-label">Tanggal Pengambilan</label>
                        <input type="date" class="form-control" id="tanggal_pengambilan" name="tanggal_pengambilan" value="<?= $Buku['tanggal_pengambilan'] ?>">
                    </div>
                    <div class="mb-3">
                        <label for="tanggal_pengembalian" class="form-label">Tanggal Pengembalian</label>
                        <input type="date" class="form-control" id="tanggal_pengembalian" name="tanggal_pengembalian" value="<?= $Buku['tanggal_pengembalian'] ?>">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>