<?php
if (is_array($sanpham)){
    //nếu có giá trị hay không 
    extract($sanpham);
}
$hinhpath="../uploads/".$img;
if(is_file($hinhpath)){
    $hinh="<img src='".$hinhpath."' height='80' width: 100%;>";
}
else{
    $hinh="Không có hình";
}

?>
<div class="row">
            <div class="row formtitle">
                <h1>Cập nhập loại hàng</h1>
            </div>
            <div class="row formcontent">
            <form action="index.php?act=updatesp" method="post" enctype="multipart/form-data" >
                    <div class="row mb">
                    <select name="iddm" id="">
                                <option value="0" selected>Tất cả</option>
                            <?php
                                foreach($listdanhmuc as $danhmuc){
                                    extract($danhmuc);
                                    if($iddm==$id) $s="selected"; else $s="";
                                    echo '<option value="'.$id_dm.'" '.$s.'>'.$name_dm.'</option>';
                                    
                            }
                            ?>
                            
                            </select>
                    </div>
                    <div class="row mb">
                        Tên sản phẩm <br>
                        <input type="text" name="tensp" value="<?=$ten_sp?>">
                    </div>
                    <div class="row mb">
                        Giá Cũ<br>
                        <input type="text" name="giacu" value="<?=$gia_cu?>">
                    </div>
                    <div class="row mb">
                        Giá Mới<br>
                        <input type="text" name="giamoi" value="<?=$gia_moi?>">
                    </div>
                    </div>
                    <div class="row mb">
                        Hình <br>
                        <input type="file" name="hinh">
                        <?=$hinh?>
                    </div>
                    <div class="row mb">
                        Mô tả <br>
                        <textarea name="mota" cols="30" rows="10"><?php if(isset($mota)&&($mota!="")) echo $mota;?></textarea>
                    </div>
                    <div class="row mb">
                        Chi tiết <br>
                        <textarea name="chitiet" cols="30" rows="10"><?php if(isset($chitiet)&&($chitiet!="")) echo $chitiet;?></textarea>
                    </div>
                    <div class="row mb">
                        <input type="hidden" name="id" value="<?php if(isset($id_sp)&&($id_sp>0)) echo $id_sp;?>">
                        <input type="submit" name="capnhap" value="Cập nhập">
                        <input type="reset" value="Nhập lại">
                        <a href="index.php?act=listsp"><input type="button" value="Danh sách"></a> 
                    </div>
                    <?php
                    if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                    ?>
                </form>
            </div>
</div>