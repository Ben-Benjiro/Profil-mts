<?php
session_start();
require "../function/functions.php";

// 1. Proteksi Halaman
if (!isset($_SESSION['login']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

// 2. Ambil ID dari URL
$id = $_GET['id'];
global $conn;

// 3. Ambil data admin yang akan diedit
$result = mysqli_query($conn, "SELECT * FROM user WHERE id = $id");
$u = mysqli_fetch_assoc($result);

if (!$u) {
    echo "<script>alert('Data tidak ditemukan!'); window.location.href='admin.php';</script>";
    exit;
}

// 4. Proses Update
if (isset($_POST['submit'])) {
    $username = htmlspecialchars($_POST['username']);
    $role = 'admin'; // Kunci tetap admin

    if (!empty($_POST['password'])) {
        // Jika password diisi, update password baru
        $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        $sql = "UPDATE user SET username = '$username', password = '$password', role = '$role' WHERE id = $id";
    } else {
        // Jika password kosong, update username & role saja
        $sql = "UPDATE user SET username = '$username', role = '$role' WHERE id = $id";
    }

    if (mysqli_query($conn, $sql)) {
        echo "<script>
                alert('Data admin berhasil diperbarui!');
                window.location.href = 'admin.php';
              </script>";
    } else {
        echo "Gagal: " . mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Admin</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/materialize.min.css">
    <link rel="stylesheet" href="../assets/css/stylebaru.css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col s12 m6 offset-m3">
            <div class="main-card" style="margin-top: 50px;">
                <h5>Edit Data Admin</h5>
                <p class="grey-text">Mengedit akun: <b><?= $u['username']; ?></b></p>
                <hr>

                <form method="post" style="margin-top: 30px;">
                    <div class="input-field">
                        <i class="material-icons prefix">person</i>
                        <input type="text" name="username" id="username" value="<?= $u['username']; ?>" required>
                        <label for="username" class="active">Username</label>
                    </div>

                    <div class="input-field">
                        <i class="material-icons prefix">lock</i>
                        <input type="password" name="password" id="password">
                        <label for="password">Password Baru (kosongkan jika tidak diubah)</label>
                    </div>

                    <div style="margin-top: 30px;">
                        <button name="submit" class="btn-large blue darken-2 btn-custom" style="width: 100%;">
                            Simpan Perubahan
                        </button>
                        <div class="center-align" style="margin-top: 15px;">
                            <a href="admin.php" class="grey-text">Batal / Kembali</a>
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