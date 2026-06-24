<?php
session_start();
require "../function/functions.php";

// 1. Proteksi Halaman
if (!isset($_SESSION['login']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

if (isset($_POST['submit'])) {
    global $conn;
    
    $username = strtolower(stripslashes(htmlspecialchars($_POST['username'])));
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $role = 'admin'; 

    // 2. CEK USERNAME (Penting agar bisa tambah nama yang berbeda-beda)
    $cek = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username'");
    if (mysqli_fetch_assoc($cek)) {
        echo "<script>
                alert('Username sudah terdaftar! Gunakan nama yang berbeda.');
                window.history.back();
              </script>";
        return false;
    }

    // 3. INSERT DATA
    $sql = "INSERT INTO user (username, password, role)
            VALUES ('$username','$password','$role')";
    
    if (mysqli_query($conn, $sql)) {
        echo "<script>
                alert('Admin baru bernama $username berhasil ditambahkan!');
                window.location.href = 'admin.php';
              </script>";
    } else {
        echo "GAGAL DISIMPAN: " . mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tambah Admin</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/materialize.min.css">
    <link rel="stylesheet" href="../assets/css/stylebaru.css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col s12 m6 offset-m3">
            <div class="main-card" style="margin-top: 50px;">
                <h5>Tambah Admin Baru</h5>
                <p class="grey-text">Silakan masukkan username yang unik.</p>
                <hr>

                <form method="post" style="margin-top: 30px;">
                    <div class="input-field">
                        <i class="material-icons prefix">person</i>
                        <input type="text" name="username" id="username" required autocomplete="off">
                        <label for="username">Nama Admin Baru</label>
                    </div>

                    <div class="input-field">
                        <i class="material-icons prefix">lock</i>
                        <input type="password" name="password" id="password" required>
                        <label for="password">Password</label>
                    </div>

                    <div style="margin-top: 30px;">
                        <button name="submit" class="btn-large green darken-2 btn-custom" style="width: 100%;">
                            Tambahkan Admin
                        </button>
                        <div class="center-align" style="margin-top: 15px;">
                            <a href="admin.php" class="grey-text">Kembali ke Daftar Admin</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="../assets/js/materialize.min.js"></script>
</body>
</html>