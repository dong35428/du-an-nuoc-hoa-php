<div class="row">
            <div class="row formtitle">
                <h1>Thêm mới sản phẩm</h1>
            </div>
            <div class="row formcontent">
                <form action="index.php?act=addsp" method="post" enctype="multipart/form-data" >
                    <div class="row mb">
                        Danh mục <br>
                        <select name="iddm" id="">
                            <?php
                            foreach($listdanhmuc as $danhmuc){
                                extract($danhmuc);
                                echo '<option value="'.$id_dm.'">'.$name_dm.'</option>';

                            }
                            ?>
                            
                        </select>
                    </div>
                    <div class="row mb">
                        Tên sản phâm <br>
                        <input type="text" name="tensp">
                    </div>
                    <div class="row mb">
                        Giá Cũ<br>
                        <input type="text" name="giacu">
                    </div>
                    <div class="row mb">
                        Giá Mới<br>
                        <input type="text" name="giamoi">
                    </div>
                    <div class="row mb">
                        Hình <br>
                        <input type="file" name="hinh">
                    </div>
                    <div class="row mb">
                        Mô tả <br>
                        <textarea name="mota" cols="30" rows="10"></textarea>
                    </div>
                    <div class="row mb">
                        Chi tiết <br>
                        <textarea name="chitiet" cols="30" rows="10"></textarea>
                    </div>
                    <div class="row mb">
                        <input type="submit" name="themmoi" value="Thêm mới">
                        <input type="reset" value="Nhập lại">
                        <a href="index.php?act=listsp"><input type="button" value="Danh sách"></a> 
                    </div>
                    <?php
                    if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                    ?>
                </form>
            </div>
</div>