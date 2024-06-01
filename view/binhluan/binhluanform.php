<?php
session_start();
include "../../model/pdo.php";
include "../../model/binhluan.php";

$id_sp=$_REQUEST['id_sp'];//biến siêu toàn cục có thể thay thế post và get

$dsbl=loadall_binhluan($id_sp);// lấy idpro từ bảng bình luận
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    


<div class="row mb formbinhluan">
                    <div class="titel">Bình luận</div>
                    <div class="formcontentt ">
                    
                    <?php
                
                foreach($dsbl as $bl){
                    extract($bl);
                ?>
                <div class="row bl">
                    <hr>
                    <h1><?=$ten?></h1>Thời gian:<?=$thoigian?>
                    <p>Nội dung: <?=$noidung?></p>
                    <hr>
                </div>
                <?php
                }
                ?>
                    </div>
                    <?php
                    if(isset($_SESSION['user']['id_kh'])){
                    ?>
                    <form action="<?=$_SERVER['PHP_SELF']?>" method="post">
                            <input type="hidden" name="id_sp" value="<?=$id_sp?>"> 
                            <input type="text" name="noidung" >
                            <input type="submit" name="giuibinhluan" value="Gửi">
                        </form>
                    
                    <?php
                    }
                    ?>
                    
                        

                    <?php
                    if(isset($_POST['giuibinhluan'])&&($_POST['giuibinhluan'])){
                        $noidung=$_POST['noidung'];
                        $id_sp=$_POST['id_sp'];
                        $ten=$_SESSION['user']['username'];
                        $id_user=$_SESSION['user']['id_kh'];
                        $thoigian=date('h:i:sa d/m/Y');
                        insert_binhluan($noidung,$id_sp,$id_user,$thoigian,$ten);
                        header("location: ".$_SERVER['HTTP_REFERER']);
                    }
                    
                    ?>
                </div>
                </body>
</html>