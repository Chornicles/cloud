<?php

$process = isset($_GET['process']) ? ($_GET['process']) : false;

?>

<?php if ($process == 'failed') : ?>
    <div class="alert alert-danger" role="alert">
        Semua formulir harus diisi
    </div>
<?php endif; ?>

<div class="row">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <h1 style="text-align: center; color: #185ADB;">Form Tambah Buku</h1>
                </div>
                <form method="POST" action="<?= BASE_URL . 'process/process_add.php' ?>">
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama">
                    </div>
                    <div class="mb-3">
                        <label for="nim" class="form-label">NIM</label>
                        <input type="text" class="form-control" id="nim" name="nim">
                    </div>
                    <div class="mb-3">
                        <label for="judul_buku" class="form-label">Judul Buku</label>
                        <input type="text" class="form-control" id="judul_buku" name="judul_buku">
                    </div>
                    <div class="mb-3">
                        <label for="tanggal_pengambilan" class="form-label">Tanggal Pengambilan</label>
                        <input type="date" class="form-control" id="tanggal_pengambilan" name="tanggal_pengambilan">
                    </div>
                    <div class="mb-3">
                        <label for="tanggal_pengembalian" class="form-label">Tanggal Pengembalian</label>
                        <input type="date" class="form-control" id="tanggal_pengembalian" name="tanggal_pengembalian">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>