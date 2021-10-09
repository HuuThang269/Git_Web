
<!-- --------navbar------- -->
<nav class="navbar navbar-expand-lg navbar-light sticky-top">
            <div class="container">
                <a class="navbar-brand" href="index.php" style="background-color: white; color:black !important;padding:3px; font-weight:bold;">HT-SPORT</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">TRANG CHỦ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hot.php">SẢN PHẨM NỔI BẬT</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            DANH MỤC SẢN PHẨM
                        </a>
                        <div class="dropdown-menu">
                        <?php
                            foreach($danhmuc as $d)
                           echo" <a class=\"dropdown-item\" href=\"group.php?id=".$d["id"]."\">
                                ".$d["tendanhmuc"]."
                                </a>";
                        ?>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#review">ĐÁNH GIÁ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">LIÊN HỆ</a>
                    </li>
                </ul>
                <a href="Sign_in.html"><img src="images/user.png" class="login"></a>
                <img src="images/moon.png" id="icon">
            </div>
        </div> 
</nav> 

<!-- ---carousel------- -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="row">
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner1.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner2.png" alt="First slide">  
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner3.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner4.png" alt="First slide">
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="row">
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner5.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner6.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner7.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner8.png" alt="First slide">
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="row">
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner9.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner10.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner11.png" alt="First slide">
                </div>
                <div class="col-3">
                    <img class="d-block w-100" src="/images/banner12.png" alt="First slide">
                </div>
            </div>
        </div>
        
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true" style="height: 50px !important; width: 100px;"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true" style="height: 50px !important; width: 100px;"></span>
        <span class="sr-only">Next</span>
    </a>

</div>
<!-- jumbotron -->
<div class="jumbotron" style="background-color: white !important; padding: 50px 0 0;">
  <h1 class="display-4 text-center" style="font-weight: bold;">CHÀO MỪNG BẠN ĐẾN VỚI CỬA HÀNG QUẦN ÁO THỂ THAO HT-SPORT</h1>
  <hr class="my-4">
  <h3 class="text-center">Chuyên cung cấp những sản phẩm thời trang thể thao của các hãng Adidas - Nike - Puma</h3>
</div>