<!DOCTYPE html>
<html lang="en">
<head>
  <title>HTSPORT - Trang quản trị</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
<!--   <style>
    .row.content {
        height: 900px;
    }
    .sidenav{
        background-color: #f1f1f1; height: 100%;
    }
    @media screen and (max-width: 767px) {
        .row.content {height: auto;} 
    }
  </style> -->
  <style>
      .navbar-lon{
          margin-left: -40px;
      }
      .navbar-lon li{
        margin: 15px 0;
        height: 7vh;
        padding: 12px 5px;
        

      } 
      .navbar-lon li a {
        text-decoration: none;
        font-size: 17px;
        font-weight: bold;
        color: white;
      }
  </style>
</head>
<body>
<!-- menu mh nhỏ -->
<nav class="navbar navbar-expand-xl bg-secondary navbar-dark d-xl-none d-md-none ">
    <a style="color: white; font-weight:bold;" class="navbar-brand" href="#"><h2>HT - SPORT</h2></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <i style="color: white;" class="bi bi-layout-text-sidebar-reverse"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul style="font-weight: bold; color:white !important;" class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link bg-warning" href="#"><i class="bi bi-gear-fill"></i> Bảng điều khiển</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#"><i class="bi bi-journal-text"></i> Quản lý danh mục</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="bi bi-gift"></i> Quản lý mặt hàng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="bi bi-journal-text"></i> Quản lý bổ sung</a>
            </li>
        </ul>
    </div>
</nav>
<!-- Menu mh nhỏ - kết thúc -->
<div class="container-fluid">
  <div class="row ">
    <!-- Menu mh lớn -->     
    <div class="col-3 d-none d-sm-none d-md-block bg-secondary " style="height: 100vh;">
        <h1 style=" text-align:center;color:white;" >HT - SPORT</h1>
        <ul class="navbar-lon" style="list-style-type: none;">
            <li class="active bg-warning" ><a class="text-dark" href="#"><span><i class="bi bi-gear-fill"></i></span> Bảng điều khiển</a></li>
            <li><a href="../qldanhmuc/"><span><i class="bi bi-journal-text"></i></span> Quản lý danh mục</a></li>
            <li><a href="../qlmathang/"><span><i class="bi bi-gift"></i></span> Quản lý mặt hàng</a></li>
            <li><a href=""><span><i class="bi bi-journal-text"></i></span> Quản lý... (bổ sung)</a></li>
        </ul><br>
    </div>
    <!-- Menu mh lớn - kết thúc -->
    <br>
    
    <div class="col-sm-12 col-md-9">
        <div class="container-fluid">  
            <!-- Thông tin người dùng - sẽ bổ sung ở bài thực hành sau -->          
            <div class="dropdown mt-3" style="text-align: right;">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown">
                    <i class="bi bi-person-circle"></i> Chào user...
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Thông báo</a>
                    <a class="dropdown-item" href="#">Hồ sơ</a>
                    <a class="dropdown-item" href="#">Đổi mật khẩu</a>
                    <a class="dropdown-item" href="#">Thoát</a>
                </div>
            </div>
      </div>
      
    
      

     
    
