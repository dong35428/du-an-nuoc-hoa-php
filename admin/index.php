<?php

include "../model/sanpham.php";
include "../model/danhmuc.php";
include "../model/taikhoan.php";
include "../model/giohang.php";
include "../model/binhluan.php";
include "../model/pdo.php";
include "header.php";

if(isset($_GET['act'])){
    $act=$_GET['act'];
    switch ($act){

    // Danh mục
        //Thêm danh mục
        case "adddm":
            if(isset($_POST['themmoi'])&&($_POST['themmoi'])){
                $tenloai=$_POST['tenloai'];
                insert_danhmuc($tenloai);
                $thongbao="Thêm thành công";
            }
             include "danhmuc/add.php";//kết nối danh mục 
            break;
        
        //bảng dữ liệu danh mục
        case "listdm":
            //lấy tất cả dữ liệu
            $listdanhmuc=loadall_danhmuc();
            include "danhmuc/list.php";
            break;

        //xóa phần tử được chọn của danh mục
        case "xoadm":
            //b1:
            if(isset($_GET['id'])&&($_GET['id']>0)){
                delete_danhmuc($_GET['id']);
            }
            $listdanhmuc=loadall_danhmuc();
            include "danhmuc/list.php";
            break;
        
        //sửa
        case "suadm":
            //lấy một dữ liệu
            if(isset($_GET['id'])&&($_GET['id']>0)){
                $dm=loadone_danhmuc($_GET['id']);
            }
            include "danhmuc/update.php";
            break;
        //sau khi lấy được id ta tiến hành up dữ liệu lên
        case "updatedm":
            if(isset($_POST['capnhap'])&&($_POST['capnhap'])){
                $tenloai=$_POST['tenloai'];
                $id=$_POST['id'];
                update_danhmuc($id,$tenloai);
                $thongbao="Cập nhập thành công";
            }
            $listdanhmuc=loadall_danhmuc();
            include "danhmuc/list.php";
            break;



    // Sản phâm
        //Thêm danh mục
        case "addsp"://ấn vào menu
            //kiểm tra người dùng có ấn ào nút thêm hay ko 
            if(isset($_POST['themmoi'])&&($_POST['themmoi'])){
                $iddm=$_POST['iddm'];
                $tensp=$_POST['tensp'];
                $giacu=$_POST['giacu'];
                $giamoi=$_POST['giamoi'];
                $mota=$_POST['mota'];
                $chitiet=$_POST['chitiet'];

                $hinh=$_FILES['hinh']['name'];
                $taget_dir="../uploads/";
                $tager_file=$taget_dir.basename($_FILES['hinh']['name']);
                if(move_uploaded_file($_FILES["hinh"]["tmp_name"],$tager_file)){

                }
                else{

                }
                insert_sanpham($tensp,$giacu,$giamoi,$hinh,$mota,$iddm,$chitiet);
                $thongbao="Thêm thành công";
            }
            $listdanhmuc=loadall_danhmuc();
             include "sanpham/add.php";//kết nối danh mục 
            break;
        
        //bảng dữ liệu danh mục
        case "listsp":
            if(isset($_POST['listok'])&&($_POST['listok'])){
               $kyw=$_POST['kyw'];
               $iddm=$_POST['iddm'];
            }
            else{
                $kyw='';
                $iddm=0;
            }

            $listdanhmuc=loadall_danhmuc();
            
            $listsanpham=loadall_sanpham($kyw,$iddm);
            
            include "sanpham/list.php";
            break;

        //xóa phần tử được chọn của danh mục
        case "xoasp":
            //b1:
            if(isset($_GET['id'])&&($_GET['id']>0)){
                delete_sanpham($_GET['id']);
            }
            
            $listsanpham=loadall_sanpham("",0);
            include "sanpham/list.php";
            break;
        
        //sửa
        case "suasp":
            //lấy một dữ liệu
            if(isset($_GET['id'])&&($_GET['id']>0)){
                $sanpham=loadone_sanpham($_GET['id']);
            }
            $listdanhmuc=loadall_danhmuc();
            include "sanpham/update.php";
            break;
        //sau khi lấy được id ta tiến hành up dữ liệu lên
        case "updatesp":
            if(isset($_POST['capnhap'])&&($_POST['capnhap'])){
                $id=$_POST['id'];
                $iddm=$_POST['iddm'];
                $tensp=$_POST['tensp'];
                $giacu=$_POST['giacu'];
                $giamoi=$_POST['giamoi'];
                $mota=$_POST['mota'];
                $chitiet=$_POST['chitiet'];

                $hinh=$_FILES['hinh']['name'];
                $taget_dir="../uploads/";
                $tager_file=$taget_dir.basename($_FILES['hinh']['name']);
                if(move_uploaded_file($_FILES["hinh"]["tmp_name"],$tager_file)){

                }
                else{

                }
                update_sanpham($id,$iddm,$tensp,$giacu,$giamoi,$mota,$hinh,$chitiet);
                $thongbao="Cập nhập thành công";
            }
            $listdanhmuc=loadall_danhmuc();
            $listsanpham=loadall_sanpham("",0);
            include "sanpham/list.php";
            break;
            //tài khoản
            case "dskh":
                $listtaikhoan=loadall_taikhoan();
                include "taikhoan/list.php";
                break;
            case "xoatk":
                
                if(isset($_GET['id'])&&($_GET['id']>0)){
                    delete_taikhoan($_GET['id']);
                }
                
                $listtaikhoan=loadall_taikhoan();
                include "taikhoan/list.php";
                break;
            //bình luận
            case "dsdh":
                $listbill=loadall_bill(0);
                include "donhang/list.php";
            break;
            case "xoadh":
                //b1:
                if(isset($_GET['id'])&&($_GET['id']>0)){
                    delete_dh($_GET['id']);
                }
                $listbill=loadall_bill(0);
                include "donhang/list.php";
            break;
            case "suadh":
                //lấy một dữ liệu
                if(isset($_GET['id'])&&($_GET['id']>0)){
                    $bill=loadone_donhang($_GET['id']);
                }
                $listbill=loadall_bill(0);
                include "donhang/update.php";
                break;
            case "updatesuadh":
                if(isset($_POST['capnhap'])&&($_POST['capnhap'])){
                   $id=$_POST['madh'];
                //    echo $id;
                    $bill_status=$_POST['trangthai'];
                    // echo $bill_status;

                    update_donhang($id,$bill_status);
                    $thongbao="Cập nhập thành công";
                }
                $listbill=loadall_bill(0);
                include "donhang/list.php";
            break;
            case "thongke":
                $listthongke=loadall_thongke();
                include "thongke/list.php";
            break;
            case "bieudo":
                if(isset($_POST['bieudo'])&&($_POST['bieudo']))
                $listthongke=loadall_thongke();
                include "thongke/bieudo.php";
            break;
            case "dsbl":
                $listbinhluan=loadall_binhluan(0);
                include "binhluan/list.php";
                break;
            case "xoabl":
                if(isset($_GET['id'])&&($_GET['id']>0)){
                    delete_bl($_GET['id']);
                }
                $listbinhluan=loadall_binhluan(0);
                include "binhluan/list.php";
                break;
        
        
        default:
            include "home.php";
            break;
    }
}

else{
    include "home.php";
}


include "footer.php"

?>