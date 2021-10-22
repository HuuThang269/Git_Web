<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <title>Sign in</title>
    <script language="Javascript">
        function kiemtra(){
            if(f.taikhoan.value == ""  )
                alert ("Bạn chưa nhập tài khoản !!!");
            else
                alert ("Bạn chưa nhập mật khẩu !!!");
        }

    </script>
    
</head>
<body>
<section id="sign-in">
        <div class="container">
            <form name="f">
                <h1>ĐĂNG NHẬP</h1>
                <div class="form-group row">
                    <div class="col-12">
                        <label>Tài khoản</label>
                        <input type="text" class="form-control" placeholder="Tài khoản" name="taikhoan">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-12">
                        <label>Mật khẩu</label>
                        <input type="password" class="form-control" placeholder="Mật khẩu" name="matkhau">
                    </div>
                </div>
                <div class="form-group form-check row">
                   <div class="col-12">
                        <input type="checkbox" class="form-check-input">
                        <label class="form-check-label">Hiển thị mật khẩu</label>
                   </div>
                </div>
                <div class="btn-submit">
                    <a href="">
                        <button type="button" class="btn btn-login" onclick="kiemtra()">Đăng nhập</button>
                    </a>
                </div>
                <h5>Bạn chưa có tài khoản? <a href="sign_up.php">Đăng ký</a></h5>
            </form>
        </div>
</section>
</body>
</html>
