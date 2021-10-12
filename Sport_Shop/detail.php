<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/smooth-scroll.js"></script>
    <title>Shop Online</title>
</head>
<body>
    <?php
        require("model/database.php");
        require("model/danhmuc.php");
        require("model/mathang.php");

        if(isset($_GET["id"]))
            $mathang_id = $_GET["id"];
        else
            $mathang_id = 1;
    
        $dm = new DANHMUC();
        $danhmuc = $dm->laydanhmuc();

        $mh = new MATHANG();
        $mathang = $mh->laymathang();
        $mathanghienhanh = $mh->laymathangtheoid($mathang_id);
        $mathangtheodanhmuc = $mh->laymathangtheodanhmuc($mathanghienhanh["danhmuc_id"]);

        //Tăng lượt xem
        $mh->tangluotxem($mathanghienhanh["id"]);
        
        include("include/header.php");
    ?>
    <!-- -------details------------- -->
    <section id="details">
        <div class="container-fluid">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
                        <li class="breadcrumb-item active"  aria-current="page"> <a style="color: white;" href="detail.php">Chi tiết</a> </li>
                    </ol>
                </nav>
                <div class="detail-box">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-12 left-detail">
                            <img src="<?php echo $mathanghienhanh["hinhanh"];  ?>" width="100%">
                        </div>
                     
                        <div class="col-md-8 col-sm-6 col-12 h-100">
                        
                            <div class="right-detail">
                                <h1><?php echo $mathanghienhanh["tenmathang"]; ?></h1>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"> </i>  
                                <h2>Giá bán: <span style="color: red;"><?php echo number_format($mathanghienhanh["giaban"]); ?> đ</span></h2>
                                <h4>Size</h4>
                                <div class="size">
                                    <span>M</span>
                                    <span>L</span>
                                    <span>XL</span>
                                    <span>XXL</span>
                                </div>
                                <p style="margin-top: 30px;">Lượt xem: <?php echo $mathanghienhanh["luotxem"]; ?> </p> 
                                <p style="margin-bottom:50px;"><?php echo $mathanghienhanh["mota"];?></p>
                                <div class="add-product">
                                    <a href="card.php"><button type="button" class="btn btn-info">Thêm vào giỏ hàng</button></a>
                                    <a href="card.php"><button type="button" class="btn btn-danger">Mua ngay</button></a>
                                </div>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <div class="container">
    <h3 class="text-center">SẢN PHẨM CÙNG LOẠI</h3>
        <div class="row">
            <?php
                foreach($mathangtheodanhmuc as $m):
                if($m["id"] != $mathanghienhanh["id"])
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
</body>
</html>
