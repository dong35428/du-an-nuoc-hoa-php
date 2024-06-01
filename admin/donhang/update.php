<?php
if (is_array($bill)){
    //nếu có giá trị hay không 
    extract($bill);
    $ttdh=get_ttdh($bill['bill_status']);
}
?>
<div class="row">
            <div class="row formtitle">
                <h1>Cập nhập trạng thái đơn hàng</h1>
            </div>
            <div class="row formcontent">
                <form action="index.php?act=updatesuadh" method="post">
                    <div class="row mb">
                        Mã đơn hàng <br>
                        <input type="text" name="madh" value="<?=$bill['id_dh']?>">
                    </div>
                    <div class="row mb">
                        Trạng thái <br>
                        <select name="trangthai" id="new_status">
                <option value="0" <?php echo ($bill['bill_status'] == 0) ? "selected" : ""; ?>>Đơn hàng mới</option>
                <option value="1" <?php echo ($bill['bill_status'] == 1) ? "selected" : ""; ?>>Đang xử lý</option>
                <option value="2" <?php echo ($bill['bill_status'] == 2) ? "selected" : ""; ?>>Đang giao hàng</option>
                <option value="3" <?php echo ($bill['bill_status'] == 3) ? "selected" : ""; ?>>Hoàn tất</option>
            </select><br><br>
                    </div>
                    <div class="row mb">
                        <input type="hidden" name="id" value="<?=$bill['id_dh']?>">
                        <input type="submit" name="capnhap" value="Cập nhập">
                        <input type="reset" value="Nhập lại">
                        <a href="index.php?act=listdh"><input type="button" value="Danh sách"></a> 
                    </div>
                    <?php
                    if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                    ?>
                </form>
            </div>
</div>