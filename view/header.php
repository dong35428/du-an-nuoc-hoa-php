<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="view/css/style.css">
    <script src="../scrip/scrip.js"></script>

</head>

<body>
    <div class="boxcenter">
        <div class="row mennu">
            <div class="logo">
                <a href="index.php"><img src="nuochoa/logo1.png" alt=""></a>
            </div>
            <div class="menu1">
                <ul>
                    <li><a href="index.php?act=cuahang">CỬA HÀNG</a></li>
                    <li><a href="index.php?act=sale">SALE</a></li>
                    <li><a href="index.php?act=gioithieu">GIỚI THIỆU</a></li>
                    <li><a href="index.php?act=lienhe">LIÊN HỆ</a></li>
                </ul>
            </div>
            <div class="search">
            <form action="index.php?act=sptimkiem" method="post">
                            <input type="text" name="kyw" placeholder="Tìm kiếm ">
                            <input type="submit" name="timkiem" value="Tìm Kiếm">
            </form>     
            </div>
            <div class="taikhoan">
                <?php
                if(isset($_SESSION['user'])){
                    extract($_SESSION['user']);
                   echo '
                   <img src="nuochoa/user.png" alt="" style="width: 35px; height: 35px;">
                   <a href="index.php?act=thongtin">  '.$username.'</a>
                   ';
                }
                else{
                    echo '
                    <a href="index.php?act=dangnhap">ĐĂNG NHẬP</a>/<a href="index.php?act=dangky">ĐĂNG KÝ</a>
                    ';
                }
                ?>
                
            </div>
            <div class="giohang">
                <a href="index.php?act=giohang"><img src="nuochoa/Vector.png" alt=""></a>
            </div>
        </div>