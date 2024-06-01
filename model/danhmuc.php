<?php
 function insert_danhmuc($tenloai){
    $sql="INSERT INTO `loai` (`id_dm`, `name_dm`) VALUES (NULL, '$tenloai')";
    
    pdo_execute($sql);
 }
 function delete_danhmuc($id){//lấy id 
    $sql="DELETE FROM loai WHERE `loai`.`id_dm` = $id";//câu lện xóa sql
    pdo_execute($sql);//câu lệnh thực thi
 }
 function loadall_danhmuc(){
    $sql="SELECT * FROM `loai`";//kết nói với bảng và chọn đến danh mục 
    $listdanhmuc=pdo_query($sql);//lấy thông tin của bảng
    return $listdanhmuc;
 }
 function loadone_danhmuc($id){
    $sql="SELECT * FROM `loai` where `id_dm`=$id";//chỉ đến bảng danh mục có id 
    $dm=pdo_query_one($sql);//lấy một phần tử
    return $dm;//kết túc biến trở về
 }
 function update_danhmuc($id,$tenloai){
    $sql="UPDATE `loai` SET `name_dm` = '$tenloai' WHERE `loai`.`id_dm` = $id";
    //thực thi
    pdo_execute($sql);
 }
?>