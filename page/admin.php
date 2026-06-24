<?php
session_start();
require "../function/functions.php";

// proteksi halaman
if (!isset($_SESSION['login'])) {
    header("Location: ../login.php");
    exit;
}

$users = mysqli_query($conn, "SELECT * FROM user ORDER BY id DESC");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Manajemen Admin</title>
    <link rel="stylesheet" href="../assets/css/materialize.min.css">
    <link rel="stylesheet" href="../assets/css/stylebaru.css">
</head>
<body>

<div class="container">
    <div class="main-card">
        <div class="row">
            <div class="col s12 m8">
                <h4>Manajemen Pengguna</h4>
            </div>
            <div class="col s12 m4 right-align">
                <a href="tambah_admin.php" class="btn-large green darken-2 btn-custom shadow">
                    <i class="material-icons left">Tambah Admin</i>
                </a>
            </div>
        </div>

        <table class="highlight responsive-table" style="margin-top: 20px;">
            <thead class="table-header">
                <tr>
                    <th>No</th>
                    <th>Username</th>
                    <th>Role</th>
                    <th class="center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $no=1; foreach($users as $u): ?>
                <tr>
                    <td><b><?= $no++; ?></b></td>
                    <td><?= $u['username']; ?></td>
                    <td><span class="chip green lighten-4 green-text text-darken-4"><?= $u['role']; ?></span></td>
                    <td class="center">
                        <a href="edit_admin.php?id=<?= $u['id']; ?>" class="btn-small bgreen darken-2 btn-custom">Edit</a>
                        <a href="hapus_admin.php?id=<?= $u['id']; ?>" onclick="return confirm('Hapus user ini?')" class="btn-small red btn-custom">Hapus</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <div style="margin-top: 20px;">
            <a href="index.php" class="red-text"><b>Keluar Sistem</b></a>
        </div>
    </div>
</div>

</body>
</html>