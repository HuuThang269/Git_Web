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
    <title>Sign up</title>
    <script language="Javascript">
        function kiemtra(){
            if(f.ten.value==""){
                alert("Bạn chưa nhập tên !!!");
                f.ten.focus();
            }
            else{
                if(f.sdt.value==""){
                    alert("Bạn chưa nhập số điện thoại !!!");
                    f.sdt.focus();
                }
                if(f.taikhoan.value==""){
                    alert("Bạn chưa nhập tài khoản !!!");
                    f.taikhoan.focus();
                }
                else{
                    alert("Bạn chưa nhập mật khẩu !!");
                    f.matkhau.focus();
                }
            }
            if(f.laplaimatkhau.value != f.matkhau.value)
                alert("Mật khẩu nhập lại không chính xác !!!");
        }

    </script>
   
</head>
<body>
<section id="sign-in">
        <div class="container">
            <form name="f">
                <h1>ĐĂNG KÍ TÀI KHOẢN</h1>
                <div class="row form-group">
                    <div class="col-md-8 col-xs-12">
                            <label>Tên</label>
                            <input type="text" class="form-control" name="ten">
                    </div>
                    <div class="col-md-4 col-xs-12">
                            <label>Số điện thoại</label>
                            <input type="text" class="form-control" name="sdt">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-12">
                        <label>Tài khoản</label>
                        <input type="text" class="form-control" name="taikhoan">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-12">
                        <label>Mật khẩu</label>
                        <input type="password" class="form-control" name="matkhau">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-12">
                        <label>Nhập lại mật khẩu</label>
                        <input type="password" class="form-control" name="laplaimatkhau">
                    </div>
                </div>
                <div class=" row form-group form-check">
                <div class="col-12">
                        <input type="checkbox" class="form-check-input">
                        <label class="form-check-label">Hiển thị mật khẩu</label>
                </div>
                </div>
                <div class="btn-submit">
                    <a href="#">
                        <button type="button" class="btn btn-login" onclick="kiemtra()">Đăng ký</button>
                    </a>
                </div>
            </form>
        </div>
    </section>
</body>
</html>
