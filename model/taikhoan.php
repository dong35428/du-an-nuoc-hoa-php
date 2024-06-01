<?php
function insert_taikhoan($email,$user,$pass,$address,$sdt){
   $sql="INSERT INTO `taikhoan` (`username`, `password`, `email`, `address`, `sdt`) VALUES ('$user', '$pass', '$email', '$address', '$sdt')";
    //thực thi
    pdo_execute($sql);
 }
 function checkusser($user,$pass){
    $sql="select*from taikhoan where username='".$user."' and password='".$pass."' ";
    $sp=pdo_query_one($sql);//lấy một phần tử
    return $sp;//kết túc biến trở về
 }
 function checkemail($email){
    $sql="select*from taikhoan where email='".$email."'  ";
    $sp=pdo_query_one($sql);//lấy một phần tử
    return $sp;//kết túc biến trở về
 }
 function update_taikhoan($id,$user,$pass,$email,$address,$tel){
   
   $sql="update taikhoan set username='".$user."',password='".$pass."',email='".$email."', address='".$address."',sdt='".$tel."'  where id_kh=".$id;
   
   pdo_execute($sql);
 }
 function loadall_taikhoan(){
   $sql="select * from taikhoan order by id_kh desc";//kết nói với bảng và chọn đến danh mục 
   $listtaikhoan=pdo_query($sql);//lấy thông tin của bảng
   return $listtaikhoan;
}
function delete_taikhoan($id){//lấy id 
   $sql="delete from taikhoan where id_kh=".$id;//câu lện xóa sql
   pdo_execute($sql);//câu lệnh thực thi
}
?>