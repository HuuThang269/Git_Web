<?php
    require("../../model/database.php");
    require("../../model/danhmuc.php");

// Xét xem có thao tác nào được chọn
if(isset($_REQUEST["action"])){
    $action = $_REQUEST["action"];
}
else{
    $action="danhsach";
}
//Khai báo đối tượng thuộc lớp DANHMUC
$dm = new DANHMUC();
$id_sua = 0;

switch($action){
    case "danhsach":
        //lấy kết quả đọc danh mục về
        $danhmuc = $dm->laydanhmuc();   
        include("main.php");
        break;

    case "xulythem":
        //thêm danh mục
        $dm->themdanhmuc($_POST["txtten"]); 
        //trả về danh sách danh mục  
        $danhmuc = $dm->laydanhmuc();   
        include("main.php");
        break;

    case "xoa":
        //xóa danh mục
        $dm->xoadanhmuc($_GET["id"]); 
        //trả về danh sách danh mục  
        $danhmuc = $dm->laydanhmuc();   
        include("main.php");
        break;  
        
    
    case "sua":
        //sửa danh mục
        $id_sua = $_GET["id"];
        //trả về danh sách danh mục
        $danhmuc = $dm->laydanhmuc();   
        include("main.php");
        break;

    case "xulysua":
        //xử lý sửa danh mục
        $dm ->suadanhmuc($_POST["txtid"], $_POST["txtten"]);
        //trả về danh sách danh mục
        $danhmuc = $dm->laydanhmuc();   
        include("main.php");
        break;  

    default:
    break;
    }
?>