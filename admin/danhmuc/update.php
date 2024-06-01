<?php
if (is_array($dm)){
    //nếu có giá trị hay không 
    extract($dm);
}
?>
<div class="row">
            <div class="row formtitle">
                <h1>Cập nhập loại hàng</h1>
            </div>
            <div class="row formcontent">
                <form action="index.php?act=updatedm" method="post">
                    <div class="row mb">
                        Mã loại <br>
                        <input type="text" name="maloai">
                    </div>
                    <div class="row mb">
                        Tên loại <br>
                        <input type="text" name="tenloai" value="<?php if(isset($name_dm)&&($name_dm!="")) echo $name_dm;?>">
                    </div>
                    <div class="row mb">
                        <input type="hidden" name="id" value="<?php if(isset($id_dm)&&($id_dm>0)) echo $id_dm;?>">
                        <input type="submit" name="capnhap" value="Cập nhập">
                        <input type="reset" value="Nhập lại">
                        <a href="index.php?act=listdm"><input type="button" value="Danh sách"></a> 
                    </div>
                    <?php
                    if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                    ?>
                </form>
            </div>
</div>