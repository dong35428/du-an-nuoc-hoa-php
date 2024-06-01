
   
        <div class="row mb formtaikhoan">
            <h1>CẬP NHẬP TÀI KHOẢN</h1>
            <div class="row  formtaikhoan">
                <?php
                if(isset($_SESSION['user'])&&(is_array($_SESSION['user']))){
                    extract($_SESSION['user']);
                }
                ?>
                <form action="index.php?act=edit_taikhoan" method="post">
                    <label for="">Email</label><br>
                    <input type="email" name="email" id="" value="<?=$email?>"><br><br>
                    <label for="">Tên đăng nhập</label><br>
                    <input type="text" name="user" value="<?=$username?>"><br><br>
                    <label for="">Mật khẩu mới</label> <br>
                    <input type="text" name="pass" id="" value="<?=$password?>"><br><br>
                    <label for="">Địa chỉ</label><br>
                    <input type="text" name="address" id="" value="<?=$address?>" ><br><br>
                   <label for="">Số điện thoại</label> <br>
                    <input type="text" name="tel" id=""  value="<?=$sdt?>"><br><br>

                    <input type="hidden"  name="id" value="<?=$id_kh?>">
                    <input type="submit" value="Cập nhập" name="capnhap">
                
                </form>
                <h2 class="thongbao">
                <?php
                if(isset($thongbao)&&($thongbao!="")){
                    echo $thongbao;
                }
                
                ?>
                </h2>
            </div>
        </div>
  
