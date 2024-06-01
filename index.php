<?php
session_start();
include "view/header.php";
include "model/pdo.php";
include "global.php";
include "model/danhmuc.php";
include "model/sanpham.php";
include "model/giohang.php";
include "model/taikhoan.php";
if(!isset($_SESSION['mycart']))  $_SESSION['mycart']=[];
$salehome=loadall_sanpham_salehome();
$yeuthich=loadall_sanpham_top10();
$spmoi=loadall_sanpham_moi();
if(isset($_GET['act'])&&($_GET['act']!="")){
    $act=$_GET['act'];
    switch($act){
        case 'cuahang':
            $dsdm=loadall_danhmuc();
            $spnew=loadall_sanpham_home();
            include "view/cuahang.php";
        break;
        case 'sanpham':
            if(isset($_POST['kyw'])&&($_POST['kyw']="")){
                $kyw=$_POST['kyw'];
            }
            else{
                $kyw="";
            }
            if(isset($_GET['iddm'])&&($_GET['iddm']>0)){
                $iddm=$_GET['iddm'];
                
            }
            else{
                $iddm=0;
            }
            $dsdm=loadall_danhmuc();
            $dssp=loadall_sanpham($kyw="",$iddm);
            $tendm=load_ten_dm($iddm);
            include "view/sanpham.php";
        break;
        case "sptimkiem":
            if(isset($_POST['timkiem'])&&($_POST['timkiem'])){
               $kyw=$_POST['kyw'];
               
            }
            else{
                $kyw='';
                
            }

            $dsdm=loadall_danhmuc();
            
            $dssp=loadall_sanpham($kyw);
            
            include "view/sptimkiem.php";
            break;
        case "sanphamct":
            if(isset($_GET['idsp'])&&($_GET['idsp']>0)){
                $id=$_GET['idsp'];
                $onesp=loadone_sanpham($id);
                extract($onesp);
                $spcungloai=load_sanpham_cungloai($id,$id_dm);
                $dsdm=loadall_danhmuc();
                include "view/sanphamct.php";
            }
            else{
                include "view/home.php";
            }
            break;
        case "dangky":
                $error=[];
            if(isset($_POST['dangky'])&&($_POST['dangky']>0)){
                $email=$_POST['email'];
                $user=$_POST['user'];
                $pass=$_POST['pass'];
                $nlmk=$_POST['nlmk'];
                $address=$_POST['address'];
                $sdt=$_POST['sdt'];
                if(empty($user)){
					$error['user']['rong']="Vui lòng nhập tên đăng nhập";
				}
				else{
                    if(strlen($user)<7){
                        $error['user']['dodai']="Độ dài tối thiểu cần phải có 7 kí tự";
                    }
                }
                if(empty($email)){
                    $error['email']['rong']="Vui lòng nhập Email";  
                }
                if(empty($pass)){
                    $error['pass']['rong']="Vui lòng nhập mật khẩu";
                }
                if($pass!=$nlmk){
                    $error['nlmk']="Mật khẩu không khớp";
                }
                if(empty($address)){
                    $error['address']['rong']="Địa chỉ không được để trống";

                }
                if(empty($sdt)){
                    $error['sdt']['rong']="Số điện thoại không được để trống";

                }
                if(empty($error)){
                    insert_taikhoan($email,$user,$pass,$address,$sdt);
                    $thongbao="Đăng đăng kí thành công. Vui lòng đăng nhập để thực hiện chức năng";
                }
               
            }
            include "view/taikhoan/dangky.php";
            break;
        case "dangnhap":
            $error=[];
            if(isset($_POST['dangnhap'])&&($_POST['dangnhap'])){
                $user=$_POST['user'];
                $pass=$_POST['pass'];
                $checkuser=checkusser($user,$pass);
                
                if(empty($user)){
					$error['user']['rong']="Vui lòng nhập tên đăng nhập";
				}
				else{
                    if(strlen($user)<7){
                        $error['user']['dodai']="Độ dài tối thiểu cần phải có 7 kí tự";
                    }
                }
                if(empty($pass)){
                    $error['pass']['rong']="Vui lòng nhập mật khẩu";
                }
            if(empty($error)){
            if(is_array($checkuser)){
                $_SESSION['user']=$checkuser;
                header("Location:index.php");
            }
            else{
                $thongbao="Tài khoản không tồn tại vui lòng đăng kí";
            }}
           
            }
            include "view/taikhoan/dangnhap.php";
            break;
        case "thongtin":
            include "view/taikhoan/thongtin.php";
        break;
        case 'thoat':
            session_unset();
            header("location:index.php");
        break;
        case 'edit_taikhoan':
            if(isset($_POST['capnhap'])&&($_POST['capnhap'])){
                
                $user=$_POST['user'];
                $pass=$_POST['pass'];
                $email=$_POST['email'];
                $address=$_POST['address'];
                $tel=$_POST['tel'];
                $id=$_POST['id'];
                update_taikhoan($id,$user,$pass,$email,$address,$tel);
                $_SESSION['user']=checkusser($user,$pass);
                header("Location:index.php?act=edit_taikhoan");
            }
            include "view/taikhoan/edit.php";
        break;
        case 'quenmk':
            if(isset($_POST['giuiemail'])&&($_POST['giuiemail'])){
                $email=$_POST['email'];
              
                $checkemail=checkemail($email);
                if(is_array($checkemail)){
                    $thongbao="Mật khẩu của bạn là: ".$checkemail['password'];
                }
                else{
                    $thongbao="Email không tồn tại";
                }
            }
            include "view/taikhoan/quenmk.php";
        break;
        case 'addtocart':
            if(isset($_POST['addtocart'])&&($_POST['addtocart'])){
                $id=$_POST['id_sp'];
                $tensp=$_POST['tensp'];
                $img=$_POST['img'];
                $gia_moi=$_POST['gia_moi'];
                $soluong=$_POST['soluong'];
                $ttien=$soluong*$gia_moi;
                //cho thành mang
                $spadd=[$id,$tensp,$img,$gia_moi,$soluong,$ttien];
                
                //tạo hàm để dẩy mảng con vào mảng cha ;
                array_push(($_SESSION['mycart']),$spadd);
                header("LOcation:index.php?act=cuahang");
                
            }
            break;
        case 'delcart':
            if(isset($_GET['idcart'])){
                //xóa từ cái 
                array_splice($_SESSION['mycart'],$_GET['idcart'],1);
            }
            else{
                $_SESSION['mycart']=[];
                // xóa tất cả sản phẩm
            }
            
            header('location: index.php?act=giohang');
            break;
        case "xacnhan":
            include "view/giohang/xacnhan.php";
            break;
        case "giohang":
            include "view/giohang/list.php";
            break;
        case "dongydathang":
          
                if(isset($_SESSION['user'])) $iduser=$_SESSION['user']['id_kh'];
            
            if(isset($_POST['dongydathang'])&&($_POST['dongydathang'])){
                if(isset($_SESSION['user'])) $id_kh=$_SESSION['user']['id_kh'];
                else $id=0;
                $name=$_POST['name'];
                $email=$_POST['email'];
                $address=$_POST['address'];
                $sdt=$_POST['sdt'];
                $pttt=$_POST['pttt'];
                $ngaydathang=date('h:i:sa d/m/Y');
                $tongdonhang=tongdonhang();

                $idbill=insert_donhang($id_kh,$name,$email,$address,$sdt,$pttt,$ngaydathang,$tongdonhang);

                //insert into cart : $seesion['mycart] và iddbil

                foreach($_SESSION['mycart'] as $cart){
                    insert_giohang($_SESSION['user']['id_kh'],$cart[0],$cart[2],$cart[1],$cart[3],$cart[4],$cart[5],$idbill);

                }
                //xóa
                $_SESSION['mycart']=[];



            }
            $bill=loadone_donhang($idbill);
            $billct=loadall_giohang($idbill);
            include "view/giohang/thongtinbill.php";
            break;
        case 'donhangcuatoi':
            $listbill=loadall_bill($_SESSION['user']['id_kh']);
            include "view/giohang/donhangcuatoi.php";
            break;
        
        case 'sale':
            $saletong=loadall_sanpham_saletong();
            include "view/sale.php";
            break;
        case 'gioithieu':
            include "view/gioithieu.php";
            break;
        case 'lienhe':
            include "view/lienhe.php";
            break;
    }
}
else {
    include "view/home.php";
}
include "view/footer.php";
?>