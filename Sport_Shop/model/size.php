<?php 
class SIZE
{
    public function laysize()
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "SELECT * FROM size";
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

    //lấy danh size theo loại
    public function laysizetheoloai($loai_id)
    {
        $dbcon = DATABASE::connect();
        try
        {
            $sql = "SELECT * FROM size WHERE size_loai_id=:slid";
            $cmd = $dbcon->prepare($sql);
            $cmd->bindValue(":slid", $loai_id);
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
}

?>