<?php 
// Memulai session agar bisa dihapus
session_start();

// Menghapus semua data session yang tersimpan
$_SESSION = [];
session_unset();
session_destroy();

// Mengarahkan kembali ke halaman login
// Perhatikan '../' jika file ini ada di dalam folder 'page'
header("Location: ../index.php");
exit;
?>