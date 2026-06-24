<?php
session_start();
require "../function/functions.php"; // Pastikan path ini benar!

// 1. Proteksi Halaman
if (!isset($_SESSION['login']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

// 2. Cek apakah ID ada di URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    
    // Gunakan global agar variabel $conn dari functions.php terbaca
    global $conn;

    // 3. Eksekusi Hapus
    $query = "DELETE FROM user WHERE id = $id";
    
    if (mysqli_query($conn, $query)) {
        // Berhasil hapus, balik ke halaman utama admin
        header("Location: admin.php");
        exit;
    } else {
        // Jika gagal, tampilkan pesan error dari database
        echo "Gagal menghapus: " . mysqli_error($conn);
    }
} else {
    echo "ID tidak ditemukan!";
}
?>