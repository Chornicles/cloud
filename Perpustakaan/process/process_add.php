<?php

require_once('../function/helper.php');
require_once('../function/koneksi.php');

$nama = $_POST['nama'];
$nim = $_POST['nim'];
$judul_buku = $_POST['judul_buku'];
$tanggal_pengambilan = $_POST['tanggal_pengambilan'];
$tanggal_pengembalian = $_POST['tanggal_pengembalian'];

// Pengecekan kelengkapan data
if (empty($nama) || empty($nim) || empty($judul_buku) || empty($tanggal_pengambilan) || empty($tanggal_pengembalian)) {
    header("location: " . BASE_URL . 'dashboard.php?page=create&process=failed');
} else {
    mysqli_query($koneksi, "INSERT INTO Buku(nama, nim, judul_buku, tanggal_pengambilan, tanggal_pengembalian) VALUES ('$nama', '$nim', '$judul_buku', '$tanggal_pengambilan', '$tanggal_pengembalian')");
    header("location: " . BASE_URL . 'dashboard.php?page=home&process=success');
}
