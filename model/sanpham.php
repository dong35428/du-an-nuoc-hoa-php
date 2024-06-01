<?php
 function insert_sanpham($tensp,$giacu,$giamoi,$hinh,$mota,$iddm,$chitiet){
    $sql="INSERT INTO `sanpham` (`ten_sp`, `img`, `id_dm`, `gia_cu`, `gia_moi`, `mota`, `chitiet`) VALUES ('$tensp', '$hinh', '$iddm', '$giacu', '$giamoi', '$mota', '$chitiet')";
    //thực thi
    pdo_execute($sql);
 }
 function delete_sanpham($id){//lấy id 
    $sql="delete from sanpham where id_sp=".$id;//câu lện xóa sql
    pdo_execute($sql);//câu lệnh thực thi
 }
 function loadall_sanpham_top10(){
    $sql="select * from sanpham where 1 order by luotxem desc limit 0,10";
    $listsanpham=pdo_query($sql);//lấy thông tin của bảng
    return $listsanpham;
 }

 function loadall_sanpham_home(){
    $sql="SELECT * FROM `sanpham` WHERE 1 order by `id_sp` desc limit 0,12";
    $listsanpham=pdo_query($sql);//lấy thông tin của bảng
    return $listsanpham;
 }
 function loadall_sanpham_salehome(){
    $sql="SELECT * FROM `sanpham` WHERE 1 order by rand() limit 1,10";
    $listsanpham=pdo_query($sql);//lấy thông tin của bảng
    return $listsanpham;
 }
 function loadall_sanpham_saletong(){
    $sql="SELECT * FROM `sanpham` WHERE 1 order by rand() limit 1,20";
    $listsanpham=pdo_query($sql);//lấy thông tin của bảng
    return $listsanpham;
 }
 function loadall_sanpham_moi(){
    $sql="SELECT * FROM `sanpham` WHERE 1 order by `id_sp` desc limit 0,5";
    $listsanpham=pdo_query($sql);//lấy thông tin của bảng
    return $listsanpham;
 }
 function loadall_sanpham($kyw="",$iddm=0){
    $sql="SELECT * FROM `sanpham` where 1"; 
    if($kyw!=""){
      $sql.=" and `ten_sp` like '%".$kyw."%'";
    }
    if($iddm>0){
      $sql.=" and `id_dm` ='".$iddm."'" ;
    }
    $sql.=" order by id_sp desc";
    $listsanpham=pdo_query($sql);
    return $listsanpham;
 }
 function load_ten_dm($iddm){
   if($iddm>0){
      $sql="SELECT * FROM `loai` where `id_dm`=$iddm";
    $dm=pdo_query_one($sql);
    extract($dm);
    return $name_dm;}
    else{
    return "";
   }
 }
 function loadone_sanpham($id){
    $sql="select*from sanpham where id_sp=".$id; 
    $sp=pdo_query_one($sql);
    return $sp;
 }
 function load_sanpham_cungloai($id,$id_dm){
    $sql="select*from sanpham where id_dm=".$id_dm." and id_sp <>".$id." order by id_sp desc limit 0,5";
    $listsanpham=pdo_query($sql);//lấy thông tin của bảng
    return $listsanpham;
 }

 function update_sanpham($id,$iddm,$tensp,$giacu,$giamoi,$mota,$hinh,$chitiet){
   if($hinh!=""){
    $sql="UPDATE `sanpham` SET `ten_sp` = '$tensp', `gia_cu` = '$giacu', `gia_moi` = '$giamoi', `img` = '$hinh', `id_dm` = '$iddm', `mota` = '$mota', `chitiet` = '$chitiet' WHERE `sanpham`.`id_sp` = $id";
    
}
   else{
      $sql="UPDATE `sanpham` SET `ten_sp` = '$tensp', `gia_cu` = '$giacu', `gia_moi` = '$giamoi', `id_dm` = '$iddm', `mota` = '$mota',  `chitiet` = '$chitiet' WHERE `sanpham`.`id_sp` = $id";
   
    //thực thi
   }
   pdo_execute($sql);
 }
?>