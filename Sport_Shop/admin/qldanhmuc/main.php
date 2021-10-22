<?php 
    include("../view/top.php");
 ?>
<h3>Quản lý danh mục</h3> 
<br>         
<table class="table table-hover table-striped border border-dark">
    <tr class="bg-warning">
        <th>Tên danh mục</th>
        <th>Sửa</th>
        <th>Xóa</th>
    </tr>
    <?php
        foreach($danhmuc as $d):
            if($d["id"] == $id_sua){
    ?>

    <form method="post">
        <tr>
            <td>
                <input type="text" name="txtten" class="form-control" value="<?php echo $d['tendanhmuc']; ?>">
            </td>
            <td>
                <input type="hidden" name="txtid" value="<?php echo $d["id"]; ?>">
                <input type="hidden" name="action" value="xulysua">
                <input type="submit" value="cập nhật">
            </td>
            <td><a href="index.php?action=xoa&id=<?php echo $d['id']; ?>"><i class=" text-dark bi bi-trash"></i></a></td>
        </tr>
    </form>
    <?php
            } //end if
            else {
    ?>
    <tr>
        <td><?php echo $d['tendanhmuc']; ?></td>
        <td><a href="index.php?action=sua&id=<?php echo $d['id']; ?>"><i class=" text-dark bi bi-pencil"></i></a></td>
        <td><a href="index.php?action=xoa&id=<?php echo $d['id']; ?>"><i class=" text-dark bi bi-trash"></i></a></td>
    </tr>
    <?php
            } //end else
        endforeach;
    ?>
</table>
<!-- Thêm sản phẩm -->
<div id="buttonthem">
    <a class="btn btn-warning font-weight-bold"> <i class="bi bi-plus-lg"></i> Thêm mới</a>
</div>
<br>
<div id="formthem">
    <form class="form-inline" method="post" action="">
        <input type="text" class="form-control" name="txtten" placeholder="Nhập tên danh mục">
        <br>
        <input type="hidden" name="action" value="xulythem">
        <br>
        <input type="submit" class="ml-1 btn btn-warning" value="Thêm">
    </form>
</div>
<!-- Script hiển thị khi click vào thêm -->
<script>
    $(document).ready(function(){
        //mặc định là ẩn form
        $("#formthem").hide();
        //Hiển thị khi click thêm mới
        $("#buttonthem").click(function(){
            $("#formthem").toggle(500); //Show() luôn hiện, toggle() khi click sec thay đổi trạng thái hiện và ẩn
        });
    });
</script>


<?php
    include("../view/bottom.php");
?>
