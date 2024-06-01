<div class="row formtaikhoan">
    <h1>ĐĂNG KÝ TÀI KHOẢN</h1>
    <form  action="index.php?act=dangky" method="post" >
        <label for="">Tên đăng nhập</label><br>
        <input type="text" name="user" id="user">
       <div class="row error">
       <p><?php echo !empty($error['user']['rong']) ? $error['user']['rong'] : ''; ?></p>
       <p><?php echo !empty($error['user']['dodai']) ? $error['user']['dodai'] : ''; ?></p>
       </div>
        <br><br>
        <label for="">Email</label><br><br>
        <input type="email" name="email" id="email">
        <div class="row error">
       <p><?php echo !empty($error['email']['rong']) ? $error['email']['rong'] : ''; ?></p>
       
       </div>
        <br><br>
        <label for="">Mật khẩu</label><br>
        <input type="password" name="pass" id="pass">
        <div class="row error">
       <p><?php echo !empty($error['pass']['rong']) ? $error['pass']['rong'] : ''; ?></p>
       
       </div>
        <br><br>
        <label for="">Nhập lại mật khẩu</label><br>
        <input type="password" name="nlmk" id="nlmk">
        <div class="row error">
       <p><?php echo !empty($error['nlmk']) ? $error['nlmk'] : ''; ?></p>
       
       </div>
        <br><br>
        
        <label for="">Địa chỉ</label><br>
        <input type="text" name="address" id="address">
        <div class="row error">
       <p><?php echo !empty($error['address']['rong']) ? $error['address']['rong'] : ''; ?></p>
       
       </div><br><br>
        
        <label for="">Số điện thoại</label><br>
        <input type="text" name="sdt" id="sdt">
        <div class="row error">
       <p><?php echo !empty($error['sdt']['rong']) ? $error['sdt']['rong'] : ''; ?></p>
      
       </div><br><br>
        
        <input type="submit" value="Đăng ký" name="dangky">
    </form>
    <h2 class="thongbao">
                <?php
                if(isset($thongbao)&&($thongbao!="")){
                    echo $thongbao;
                }
                
                ?>
                </h2>
</div>
