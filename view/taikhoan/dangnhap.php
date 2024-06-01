<div class="row formtaikhoan">
    <h1>ĐĂNG NHẬP</h1>
    <form action="index.php?act=dangnhap" method="post">
        <div class="row mb10">
            <label for="">Tên đăng nhập</label><br>
            <input type="text" name="user">
            <div class="row error">
       <p><?php echo !empty($error['user']['rong']) ? $error['user']['rong'] : ''; ?></p>
       <p><?php echo !empty($error['user']['dodai']) ? $error['user']['dodai'] : ''; ?></p>
       </div><br>
        </div>
        <div class="row mb10">
            <label for="">Mật khẩu</label><br>
            <input type="password" name="pass">
            <div class="row error">
       <p><?php echo !empty($error['pass']['rong']) ? $error['pass']['rong'] : ''; ?></p>
       
       </div><br>
        </div>
        <div class="row mb10">
            <input type="checkbox" name="">Ghi nhớ tài khoản <br>
        </div>
        <div class="row mb10">
            <input type="submit" value="Đăng nhập" name="dangnhap"><br>
        </div>
    
    </form>
    <h2 class="thongbao">
    <?php
    if(isset($thongbao)&&($thongbao!="")){
        echo $thongbao;
    }
    
    ?>
    </h2>
    
    <li>
        <a href="index.php?act=quenmk">Quên mật khẩu</a><br>
    </li>
    <li>
        <a href="index.php?act=dangky">Đăng kí thành viên</a>
    </li>
</div>