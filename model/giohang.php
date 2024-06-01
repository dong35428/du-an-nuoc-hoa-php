<?php

function tongdonhang(){
    
    $tong=0;
    
    foreach($_SESSION['mycart'] as $cart){
       
       $ttien=$cart[3]*$cart[4];
       $tong+=$ttien;
       
    }
    return $tong;
}
function insert_donhang($id_kh,$name,$email,$address,$sdt,$pttt,$ngaydathang,$tongdonhang){
   $sql="INSERT INTO `donhang` ( `name`, `address`, `sdt`, `email`, `pttt`, `tongdonhang`, `ngaydathang`,`id_kh`) VALUES ('$name', '$address', '$sdt', '$email', '$pttt', '$tongdonhang', '$ngaydathang','$id_kh')";
    return pdo_execute_return_lastInsertId($sql);
}
function insert_giohang($iduser,$idpro,$img,$name,$price,$soluong,$thanhtien,$idbill){
    $sql="INSERT INTO `giohang` (`id_kh`, `id_sp`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES ('$iduser', '$idpro', '$img', '$name', '$price', '$soluong', '$thanhtien', '$idbill')";
    return pdo_execute($sql);

}
function loadone_donhang($id){
    $sql="SELECT * FROM `donhang` where `id_dh`=$id";//chỉ đến bảng danh mục có id 
    $bill=pdo_query_one($sql);//lấy một phần tử
    return $bill;//kết túc biến trở về
 }
function loadall_giohang($idbill){
    $sql="SELECT * FROM `giohang` where `idbill`=$idbill";//chỉ đến bảng danh mục có id 
    $bill=pdo_query($sql);//lấy một phần tử
    return $bill;//kết túc biến trở về
 }
function loadall_giohang_count($idbill){
    $sql="SELECT * FROM `giohang` where `idbill`=$idbill";//chỉ đến bảng danh mục có id 
    $bill=pdo_query($sql);//lấy một phần tử
    return sizeof($bill);//kết túc biến trở về
 }

function loadall_bill($id_kh){
    $sql="SELECT * FROM `donhang` where 1";
    if($id_kh>0){
    $sql.=" AND `id_kh`=$id_kh";}
    $sql.=" order by id_dh desc";
    $listbill=pdo_query($sql);
    return $listbill;
 }
 function get_ttdh($n){
    switch ($n){
        case '0':
            $tt="Đơn hàng mới";
        break;
        case '1':
            $tt="Đang xử lí";
        break;
        case '2':
            $tt="Đang giao hàng";
        break;
        case '3':
            $tt="Giao hàng thành công";
        break;
        default:
        $tt="Đơn hàng mới";
        break;
    }
    return $tt;
 }
 function delete_dh($id_dh){
    $sql="DELETE FROM `donhang` WHERE `donhang`.`id_dh` = $id_dh";
    pdo_execute($sql);
 }
 function  update_donhang($id,$bill_status){
    $sql="UPDATE `donhang` SET `bill_status` = '$bill_status' WHERE `donhang`.`id_dh` = $id";
    //thực thi
    pdo_execute($sql);
 }
 function loadall_thongke(){
    $sql="SELECT loai.name_dm as tendm, count(sanpham.id_sp) as countsp, min(sanpham.gia_moi) as mingia, max(sanpham.gia_moi) as maxgia, avg(sanpham.gia_moi) as tbgia";
    $sql.=" from sanpham left join loai on loai.id_dm=sanpham.id_dm";
    $sql.=" group by loai.id_dm order by loai.id_dm desc";
    $listtk=pdo_query($sql);
    return $listtk;
 }

?>