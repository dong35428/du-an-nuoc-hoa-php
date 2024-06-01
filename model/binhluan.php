<?php
function insert_binhluan($noidung,$id_sp,$id_user,$thoigian,$ten){
    $sql="INSERT INTO `binhluan` (`noidung`, `id_sp`, `id_user`, `thoigian`, `ten`) VALUES ('$noidung', '$id_sp', '$id_user', '$thoigian', '$ten')";
    //thực thi
    pdo_execute($sql);
 }
 function loadall_binhluan($id_sp){
    $sql="select * from binhluan where 1";
    if($id_sp>0)
    $sql.=" AND id_sp='".$id_sp."' ";
    $sql.=" order by id_bl desc";//kết nói với bảng và chọn đến danh mục 
    $listbinhluan=pdo_query($sql);//lấy thông tin của bảng
    return $listbinhluan;
 }
 function delete_bl($id_bl){//lấy id 
   $sql="DELETE FROM binhluan WHERE `binhluan`.`id_bl` = $id_bl";
   pdo_execute($sql);//câu lệnh thực thi
}
 ?>