<div class="row mb thongtin">
                        <?php
                        if(isset($_SESSION['user'])){
                            extract($_SESSION['user']);
                            ?>
                            <h1>THÔNG TIN TÀI KHOẢN</h1>
                            <div class="row mb anhusser">
                            <img src="nuochoa/logouser.jpg" alt="">
                            <p><?=$username?></p>
                            </div>
                            <div class="row formtaikhoan">
                                <label for="">Email</label><br>
                                <input type="email" name="email" id="" value="<?=$email?>"><br><br>
                                <label for="">Địa chỉ</label><br>
                                <input type="text" name="address" id="" value="<?=$address?>" ><br><br>
                                <label for="">Số điện thoại</label> <br>
                                <input type="text" name="tel" id=""  value="<?=$sdt?>"><br><br>
                            </div>
                            <div class="row mb10 textusser">
                                    <li>
                                        <a href="index.php?act=donhangcuatoi">Đơn hàng của tôi</a>
                                    </li>
                                    <li>
                                        <a href="index.php?act=quenmk">Quên mật khẩu</a><br>
                                    </li>
                                    <li>
                                        <a href="index.php?act=edit_taikhoan">Cập nhập thông tin tài khoản</a>
                                    </li>
                                    <?php
                                        if($role==1){
                                    ?>
                                    <li>
                                        <a href="admin/index.php">Đăng nhập admin</a>
                                    </li>
                                    <?php }?>
                                    <li>
                                        <a href="index.php?act=thoat">Thoát</a>
                                    </li>
                            </div>
                            <?php
                        }
                        
                        ?>
                        
                    
                    </div>