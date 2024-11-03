<?php

require_once('../function/helper.php');
require_once('../function/koneksi.php');

$nama = $_POST['nama'];
$nim = $_POST['nim'];
$judul_buku = $_POST['judul_buku'];
$tanggal_pengambilan = $_POST['tanggal_pengambilan'];
$tanggal_pengembalian = $_POST['tanggal_pengembalian'];
$id = $_POST['id'];

if (empty($nama) || empty($nim) || empty($judul_buku) || empty($tanggal_pengambilan) || empty($tanggal_pengembalian)) {
    header("location: " . BASE_URL . 'dashboard.php?page=edit&id=' . $id . '&emptyform=true');
} else {
    mysqli_query($koneksi, "UPDATE Buku SET nama='$nama', nim = '$nim', judul_buku='$judul_buku', tanggal_pengambilan = '$tanggal_penggambilan', tanggal_pengembalian = '$tanggal_pengembalian' WHERE id='$id'");
    header("location: " . BASE_URL . 'dashboard.php?page=home&status=success');
}
