<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>MTs Muh 2 Karanganyar</title>
</head>

<body>

    <div class="container">
        <div class="row">
            <div class="card-panel">

                <?php 
                    $query = mysqli_query($conn, "select * from blog");
                    while ($data = mysqli_fetch_assoc($query)) {
                ?>

                <div class="row" style="margin-bottom: 0px;"> 
                    <div class="col m4 light">
                        <img class="responsive-img" src="assets/img/blog/<?php echo $data['gambar'] ?>" style="width: 100%; display: block; margin: auto;">
                        <h6 class="black-text"></h6>
                    </div>
                    
                    <div class="col m8">
                        <h5 class="black-text" style="margin-top: 0;"><?= $data['judul_blog'] ?></h5>
                        <p class="black-text" style="text-align: justify;">
                            <?= $data['isi_blog'] ?>
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col s12">
                        <hr style="border: 0; border-top: 1px solid #e0e0e0; margin: 20px 0;">
                    </div>
                </div>
                <?php } ?>

            </div>
        </div>
    </div>

    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>