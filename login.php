<?php
session_start();
require "function/functions.php";
?>
<!DOCTYPE html>
<html>
<head>
    <!-- Import Google Icon Font -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Import materialize.css -->
    <link type="text/css" rel="stylesheet" href="assets/css/materialize.min.css" media="screen,projection"/>

    <!-- Let browser know website is optimized for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>MTs Muhammadiyah 2 Karanganyar</title>

    <style type="text/css">
        body {
            background-image: url(assets/img/mts.jpeg);
            background-size: 100%;
        }
        .login {
    min-height: 120;
    display: flex;
    align-items: center;      /* tengah vertikal */
    justify-content: center;  /* tengah horizontal */

        }
        .login .card {
            background: rgba(0,0,0,.6);
        }
        .login label {
            font-size: 16px;
            color: #ccc;
        }
        .login input {
            color: white;
        }
    </style>
</head>

<body>

<!-- Login Form -->
<div class="row login">

        <div class="card">
            <div class="card-action green darken-2 white-text center-align">
                <h3>Administrator
            </div>
            <form action="" method="post">
                <div class="card-content">

                    <div class="form-field">
                        <label for="username">Username</label>
                        <input type="text" name="username" id="username">
                    </div><br>

                    <div class="form-field">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password">
                    </div><br><br>

                    <div class="form-field center-align">
                        <button type="submit" name="login" class="btn-large green darken-2">
                            Login
                        </button>
                   
            </form>

            <?php
if (isset($_POST['login'])) {
    // Ambil data dan cegah SQL Injection sederhana
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = $_POST['password'];

    // 1. Sesuaikan nama tabel (tabel Anda adalah 'user', bukan 'admin')
    $query = mysqli_query($conn, "SELECT * FROM user WHERE username='$username'");

    if (mysqli_num_rows($query) === 1) {
        $data = mysqli_fetch_assoc($query);

        // 2. Verifikasi Password
        if (password_verify($password, $data['password'])) {
            
            // 3. Simpan data penting ke SESSION
            $_SESSION['login'] = true;
            $_SESSION['id'] = $data['id'];
            $_SESSION['username'] = $data['username'];
            $_SESSION['role'] = $data['role']; // SANGAT PENTING untuk proteksi halaman

            // 4. Redirect ke halaman utama admin
            header("Location: page/index.php");
            exit;
        } else {
            echo "<script>alert('Password salah!');</script>";
        }
    } else {
        echo "<script>alert('Username tidak ditemukan!');</script>";
    }
}
?>
