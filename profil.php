<!DOCTYPE html>
<html>
	<head>
	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--Import materialize.css-->
	<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	<!-- mycss -->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!--Let browser know website is optimized for mobile-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<title>MTs Muh 2 Karanganyar</title>
	</head>

<body >

	<?php 
// 1. Pastikan koneksi database sudah disertakan
// include "koneksi.php"; 

// 2. Ambil data sejarah
$query = mysqli_query($conn, "SELECT * FROM sejarah LIMIT 1");
$data = mysqli_fetch_assoc($query);

// 3. Cek apakah data ditemukan agar tidak error
if ($data) : 
?>

<section id="about" class="aboutArea grey darken-4" style="padding: 60px 0;">
    <div class="container">
        <div class="row">
            <div class="col s12 m10 offset-m1 center-align">
                <img src="assets/img/sejarah/<?php echo $data['gambar'] ?>" 
                     style="width: 100%; border-radius: 10px; margin-bottom: 40px;" 
                     class="responsive-img">
            </div>

            <div class="col s12 m10 offset-m1">
                <h4 class="white-text" style="font-weight: bold; margin-bottom: 30px;">
                    <?= $data['judul_sejarah'] ?>
                </h4>
                
                <div class="white-text" style="text-align: justify;">
                    <?php 
                        $teks_sejarah = $data['isi_sejarah'];
                        
                        // Membuat paragraf baru khusus pada kata "Seiring berjalannya waktu"
                        $kata_kunci = "Seiring berjalannya waktu";
                        $parts = explode($kata_kunci, $teks_sejarah);
                        
                        // Tampilkan Paragraf 1
                        echo '<p style="text-indent: 50px; margin-bottom: 25px; line-height: 2; font-size: 1.1rem;">' 
                             . trim($parts[0]) . '</p>';
                        
                        // Tampilkan Paragraf 2 jika ada
                        if (isset($parts[1])) {
                            echo '<p style="text-indent: 50px; margin-bottom: 25px; line-height: 2; font-size: 1.1rem;">' 
                                 . $kata_kunci . $parts[1] . '</p>';
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php else: ?>
    <div class="container center white-text" style="padding: 50px;">
        <h5>Data sejarah belum tersedia di database.</h5>
    </div>
<?php endif; ?>



		<h4 class="center">Visi Dan Misi</h4><br/><br/>

<div class="parallax-container" style="height: auto; min-height: 400px;">
    <div class="parallax"><img src="assets/img/mts.jpeg"></div>

    <div class="container" style="padding-top: 50px; padding-bottom: 50px;">
        <div class="row">
            <?php 
                $query = mysqli_query($conn, "select * from visimisi ");
                while ($data = mysqli_fetch_assoc($query)) {
            ?>
            <div class="col m6 s12">
                <div class="card-panel" style="background: rgba(255, 255, 255, 0.95); color: #333; min-height: 450px; border-radius: 10px; padding: 30px;">
                    
                    <h4 class="left-align" style="color: #2e7d32; font-weight: bold; border-bottom: 2px solid #2e7d32; padding-bottom: 10px; margin-top: 0;">
                        <?= $data['visimisi'] ?>
                    </h4>
                    
                    <div class="left-align" style="line-height: 1.8; font-size: 1.05rem;">
                        <?= nl2br($data['isi']) ?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>




    <section  id="about" class="aboutArea grey darken-4">
	<div class="container">
		<div class="row" >
			<div class="col m12 s12 light">
				<h6 class="white-text"></h6>
			</div>
				<h5 class="white-text">SARANA DAN PRASARANA</h5>


					<?php 

						$query = mysqli_query($conn, "select * from saranaprasarana ");
						while ($data = mysqli_fetch_assoc($query)) {

					?>


					<p class="white-text"><?=$data['isi'] ?></p>



					<?php } ?>

					<br><br>



			<div class="col m12 s12 light">
				<h6 class="white-text"></h6>
			</div>
				<h5 class="white-text">Ekstrakulikuler</h5>


					<?php 

						$query = mysqli_query($conn, "select * from eskul ");
						while ($data = mysqli_fetch_assoc($query)) {

					?>


				<p class="white-text"><?=$data['eskul'] ?></p>


					<?php } ?>


				<br/><br/>

			</div>
		</div>
		</section>









	<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>