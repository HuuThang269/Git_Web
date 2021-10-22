<?php
class MATHANG{
    // Lấy danh sách mặt hàng
    public function laymathang()
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "SELECT * FROM mathang";
            $cmd = $dbcon->prepare($sql);
            $cmd->execute();
            $result = $cmd->fetchAll();
            return $result;
        }
        catch(PDOException $e)
        {
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
    //Lấy danh sách 5 mặt hàng có lượt xem cao
    public function laymathangviewcao()
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "SELECT * from mathang ORDER BY luotxem DESC LIMIT 5";
            $cmd = $dbcon->prepare($sql);
            $cmd->execute();
            $result = $cmd->fetchAll();
            return $result;
        }
        catch(PDOException $e)
        {
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
    //lấy danh sách mặt hàng theo danh mục
    public function laymathangtheodanhmuc($danhmuc_id)
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "SELECT * FROM mathang WHERE danhmuc_id=:dmid";
            $cmd = $dbcon->prepare($sql);
            $cmd->bindValue(":dmid", $danhmuc_id);
            $cmd->execute();
            $result = $cmd->fetchAll();
            return $result;
        }
        catch(PDOException $e)
        {
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
     //lấy loại theo mặt hàng
    public function layloaitheomathang($id)
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "SELECT loai_id FROM mathang WHERE id=:id";
            $cmd = $dbcon->prepare($sql);
            $cmd->bindValue(":id", $id);
            $cmd->execute();
            $result = $cmd->fetch();
            return $result;
        }
        catch(PDOException $e)
        {
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
    //lấy một mặt hàng theo id
    public function laymathangtheoid($id)
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "SELECT * FROM mathang WHERE id=:id";
            $cmd = $dbcon->prepare($sql);
            $cmd->bindValue(":id", $id);
            $cmd->execute();
            $result = $cmd->fetch();//lấy tất cả các dòng dữ liệu
            return $result;
        }
        catch(PDOException $e)
        {
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
    // Cập nhật lượt xem mặt hàng lên 1
    public function tangluotxem($id)
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "UPDATE mathang SET luotxem=luotxem+1 WHERE id=:id";
            $cmd = $dbcon->prepare($sql);//chuẩn bị câu truy vấn
            $cmd->bindValue(":id", $id);//lấy giá trị tại tham số :id
            $result = $cmd->execute();//lấy kết quả là thêm được hay không - true-false
            return $result;
        }
        catch(PDOException $e)
        {
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
    //Thêm mặt hàng
    public function themmathang($tenmathang, $mota, $giagoc, $giaban, $soluongton, $hinhanh, $danhmuc_id){
        $dbcon = DATABASE::connect();
        try{
            $sql = "INSERT INTO mathang(tenmathang, mota, giagoc, giaban, soluongton, hinhanh, danhmuc_id, luotxem, luotmua) 
                    VALUES(:tenmathang, :mota, :giagoc, :giaban, :soluongton, :hinhanh, :danhmuc_id, 0, 0)";
            $cmd = $dbcon->prepare($sql);
            $cmd->bindValue(":tenmathang", $tenmathang);
            $cmd->bindValue(":mota", $mota);
            $cmd->bindValue(":giagoc", $giagoc);
            $cmd->bindValue(":giaban", $giaban);
            $cmd->bindValue(":soluongton", $soluongton);
            $cmd->bindValue(":hinhanh", $hinhanh);
            $cmd->bindValue(":danhmuc_id", $danhmuc_id);
            $result = $cmd->execute();            
            return $result;
        }
        catch(PDOException $e){
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
    // Xóa mặt hàng
    public function xoamathang($id){
        $dbcon = DATABASE::connect();
        try{
            $sql = "DELETE FROM mathang WHERE id=:id";
            $cmd = $dbcon->prepare($sql);
            $cmd->bindValue(":id", $id);
            $result = $cmd->execute();            
            return $result;
        }
        catch(PDOException $e){
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
    // Cập nhật 
    public function suamathang($id, $tenmathang, $mota, $giagoc, $giaban, $soluongton, $hinhanh, $danhmuc_id, $luotxem, $luotmua){
        $dbcon = DATABASE::connect();
        try{
            $sql = "UPDATE mathang 
            SET tenmathang=:tenmathang, mota=:mota,  giagoc=:giagoc, giaban=:giaban, soluongton=:soluongton, hinhanh=:hinhanh,danhmuc_id=:danhmuc_id, luotxem=:luotxem,luotmua=:luotmua
            WHERE id=:id";
            $cmd = $dbcon->prepare($sql);
            $cmd->bindValue(":tenmathang", $tenmathang);
            $cmd->bindValue(":mota", $mota);
            $cmd->bindValue(":giagoc", $giagoc);
            $cmd->bindValue(":giaban", $giaban);
            $cmd->bindValue(":soluongton", $soluongton);
            $cmd->bindValue(":hinhanh", $hinhanh);
            $cmd->bindValue(":danhmuc_id", $danhmuc_id);
            $cmd->bindValue(":luotxem", $luotxem);
            $cmd->bindValue(":luotmua", $luotmua);
            $cmd->bindValue(":id", $id);
            $result = $cmd->execute();            
            return $result;
        }
        catch(PDOException $e){
            $error_message = $e->getMessage();
            echo "<p>Lỗi truy vấn: $error_message</p>";
            exit();
        }
    }
}
?>
