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
		<title> MTs Muh 2 Karanganyar </title>
	</head>

<body >


	<?php 

		$query = mysqli_query($conn, "select * from kepsek ");
		$data = mysqli_fetch_assoc($query);

	?>



	<section  id="about" class="aboutArea grey darken-4">
	<div class="container">
		<div class="row" >
			<div class="col m3 light">
				<img class="center" src="assets/img/kepalasekolah/<?php echo $data['foto_kepsek'] ?>" width="75%">
				<h6 class="white-text"><?=$data['nama'] ?></h6>
			</div>
				<h5 class="white-text">Sambutan Kepala Sekolah</h5>
				<p class="white-text"><?=$data['sambutan'] ?></p>
			</div>
		</div>
		</section><br/><br/>


		<!-- berita -->


		<section  id="berita" class="berita">
			<div class="container">
				<div class="row">
				<div class="col s12 m8">
				<h3>Berita</h3><br/>


					<?php 

						$query = mysqli_query($conn, "select * from berita ");
						while ($data = mysqli_fetch_assoc($query)) {

					?>


			    <div class="card vertical">
			      <div class="card-image">
			        <img src="assets/img/berita/<?php echo $data['gambar'] ?>" width="30%">
			      </div>
			      <div class="card-stacked">
			        <div class="card-content">
			        	<h5><?=$data['judul_berita'] ?></h5>
			        	<p><?=$data['isi_berita'] ?></p>
			        </div>
			        <div class="card-action green darken-1">
			          <a href="#" class="center green darken-1" ></a>
  
					      </div>
					  </div>
					</div>

				<?php } ?>

				</div>






				<!-- social media -->
				

				<div class="col m4 s12">
				<h3>Social Media</h3><br/>
    				<div class="card-panel ">
				<h5>Facebook</h5>
				<img src="assets/img/fb.jfif" width="95">
					<p>Mtsmuhdua Karanganyar</p><br/>
					<p>Halaman Facebook resmi MTs Muhammadiyah 2 Karanganyar digunakan sebagai media informasi dan dokumentasi kegiatan sekolah. Melalui Facebook, kami membagikan berita terbaru, agenda sekolah, prestasi siswa, serta kegiatan akademik dan nonakademik sebagai sarana komunikasi dengan siswa, orang tua, dan masyarakat.</p>
				<div class="card-action">
		          <a href="https://www.facebook.com/share/1CDkbWgRz4/">Lihat Detail ->></a>
		        </div>
				</div>



					<div class="card-panel ">
				<h5>Tiktok</h5>
				<img src="assets/img/tiktok.png" width="95">
					<p>mtsmuh2kra</p><br/>
					<p>Akun TikTok MTs Muhammadiyah 2 Karanganyar berisi konten edukatif, kreatif, dan inspiratif yang dikemas secara menarik. Melalui video singkat, kami menampilkan aktivitas sekolah, budaya positif, serta kreativitas siswa sebagai sarana pembelajaran dan hiburan yang tetap bernilai islami.</p>
				<div class="card-action">
		          <a href="https://www.tiktok.com/@mtsmuh2kra?_r=1&_t=ZS-93d9wzr2gqd">Lihat Detail ->></a>
		        </div>
				</div>



					<div class="card-panel ">
				<h5>Instagram</h5>
				<img src="assets/img/ig.jfif" width="95">
					<p>mtsmuh2kra</p><br/>
					<p>Instagram MTs Muhammadiyah 2 Karanganyar menyajikan berbagai momen kegiatan sekolah dalam bentuk foto dan video. Mulai dari kegiatan belajar mengajar, lomba, ekstrakurikuler, hingga prestasi siswa. Instagram menjadi wadah untuk menampilkan kreativitas dan semangat siswa dalam suasana yang inspiratif dan edukatif.</p>
				<div class="card-action">
		          <a href="https://www.instagram.com/mtsmuh2kra">Lihat Detail ->></a>
		        </div>
				</div>



					<div class="card-panel ">
				<h5>Youtube</h5>
				<img src="assets/img/yt.png" width="95">
					<p>mtsmuh2kra</p><br/>
					<p>Channel YouTube resmi MTs Muhammadiyah 2 Karanganyar berisi dokumentasi kegiatan sekolah, video pembelajaran, informasi akademik, serta berbagai kreativitas dan prestasi siswa. Melalui YouTube, sekolah menyampaikan informasi secara audio visual sebagai sarana edukasi, dakwah, dan komunikasi kepada siswa, orang tua, serta masyarakat luas.</p>
				<div class="card-action">
		          <a href="https://youtube.com/@mtsmuh2karanganyar641">Lihat Detail ->></a>
		        </div>
				</div>



			</div>



			</div>
		</div>
 
	</section>




    <!-- paralax -->
    <div class="parallax-container">
      <div class="parallax"><img src="assets/img/mts.jpeg" width="25%"></div>

      <div class="container jumlahsiswa">
      	<div class="row">


      		<?php 

				$query = mysqli_query($conn, "select * from siswa ");
				while ($data = mysqli_fetch_assoc($query)) {

			?>


      		<div class="col m3 s6 center">
      			  <i class="large material-icons">group</i>
      			  <h3><?php echo $data['jumlah']; ?></h3>
      			  <h6><?php echo $data['kelas']; ?></h6>
      		</div>

      	<?php 
      		
      		@$total = $total+$data['jumlah'];	

      		}


      	?>



      		<div class="col m3 s6 center">
      			  <i class="large material-icons">group</i>
      			  <h3><?php echo $total; ?></h3>
      			  <h6>Jumlah Peserta Didik</h6>
      		</div>

      	</div>
      </div>

    </div>



    <!-- card -->
    <section id="services" class="services">
    	<div class="container">
    		<div class="row">
    			<h3 class="light center gray-text text-darken-3">Fiture</h3>
    			<div class="col m4 s12">
    				<div class="card-panel center">
    					<i class="medium material-icons">photo_size_select_actual</i>
    					<h5>Profile</h5>
    					<p> Mengenal lebih dalam visi, misi, dan sejarah perjalanan MTs Muh 2 Karanganyar dalam mencetak generasi unggul.</p>
    					<a href="?page=profil">Lihat Detail ->></a>
    				</div>
    			</div>




    			<div class="col m4 s12">
    				<div class="card-panel center">
    					<i class="medium material-icons">collections</i>
    					<h5>Galerry</h5>
    					<p> Dokumentasi visual berbagai momen berharga, fasilitas sekolah, dan keseruan kegiatan belajar mengajar siswa.</p>
    					<a href="?page=galeri">Lihat Detail ->></a>
    				</div>
    			</div>




    			<div class="col m4 s12">
    				<div class="card-panel center">
    					<i class="medium material-icons">group</i>
    					<h5>Sdm</h5>
    					<p> Profil tenaga pendidik dan staf profesional yang berdedikasi tinggi dalam membimbing dan melayani seluruh siswa.</p>
    					<a href="?page=sdm">Lihat Detail ->></a>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>











	<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>