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
     //lấy danh sách mặt hàng theo loại
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
    //Cập nhật lượt xem mặt hàng lên 1
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
}
?>
