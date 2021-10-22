<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Style.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/smooth-scroll.js"></script>
    <title>Shop Online</title>
</head>
<body>
    <?php
        require("model/database.php");
        require("model/danhmuc.php");
        require("model/mathang.php");

        $dm = new DANHMUC();
        $danhmuc = $dm->laydanhmuc();
        $mh = new MATHANG();
        $mathang = $mh->laymathang();
        include("include/header.php");
        include("include/banner.php");
    ?>
    <!-- -------product------------- -->
    <section id="product">
        <div class="container">
            <?php
                foreach($danhmuc as $d):
            ?>
            <a href="group.php?id=<?php echo $d["id"]; ?>" style="text-decoration: none;">
                <h1 class="list-product-title "><?php echo $d["tendanhmuc"] ?></h1>
            </a>
                <div class="product">
                    <div class="row">
                    <?php
                        foreach($mathang as $m):
                        if($m["danhmuc_id"] == $d["id"])
                        {
                    ?>
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="card card-product mb-2 text-center">
                                <img src="<?php echo $m["hinhanh"] ?>" class="img-fluid">
                                <div class="layer">
                                    <a href="detail.php?id=<?php echo $m["id"]; ?>" class="btn btn-layer">CHI TIẾT</a>  
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title product-title mb-2" style="color:black;"><?php echo $m["tenmathang"] ?></h5>
                                    <div class="card-text product-price mb-2">
                                    <i class="far fa-eye" style="font-weight: bold;"></i> <span class="view" style="font-weight: bold;"><?php echo $m["luotxem"] ?></span>
                                    </div>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>       
                                </div>
                            </div>
                        </div>  
                        
                    <?php 
                        }    
                        endforeach; 
                    ?>
                    </div>
                    
                </div>
            <?php 
                endforeach;
            ?>    
        </div>
    </section>
   
    <!-- -----review------- -->
    <?php
        require("include/review.php");
    ?>
    <!-- -------contact------ -->
    <?php
        require("include/footer.php");
    ?>
   
    <!-- --------change theme-------- -->
    <script>
        var icon = document.getElementById("icon");

        icon.onclick = function()
        {
            document.body.classList.toggle("dark-theme");
            if(document.body.classList.contains("dark-theme"))
            {
                icon.src = "images/sun.png";
            }
            else{
                icon.src = "images/moon.png";
            }
        }
    </script>
    <!-- smoothScrool -->
    <script>
        var scroll = new SmoothScroll('a[href*="#"]');

    </script>
    <!-- Animate -->
    <script>
        new WOW().init();
    </script>

</body>
</html>