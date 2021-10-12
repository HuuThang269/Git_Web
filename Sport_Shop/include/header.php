
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
                        <a class="nav-link dropdown-toggle" href="index.php" id="navbarDropdown" role="button" data-toggle="dropdown">
                            DANH MỤC SẢN PHẨM
                        </a>
                        <div class="dropdown-menu">
                        <?php
                            foreach($danhmuc as $d)
                                echo
                                    " <a class=\"dropdown-item\" href=\"group.php?id=".$d["id"]."\">".$d["tendanhmuc"]."</a>";
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



