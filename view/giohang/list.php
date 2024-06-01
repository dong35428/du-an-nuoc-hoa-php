
   
<div class="row mb demo">
<div class="boxtile">GIỎ HÀNG</div>
<div class="row boxcontent formdsloai">
                <table >
                <tr>
                       <th>Hình</th>
                       <th>Sản Phẩm</th>
                       <th>Đơn Giá</th>
                       <th>Số Lượng</th>
                       <th>Thành Tiền</th>
                       <th>Thao tác</th>
                </tr>
                     <?php
                     $tong=0;
                     $i=0;
                     
                     foreach($_SESSION['mycart'] as $cart){
                            $hinh=$img_path.$cart[2];
                            $ttien=$cart[3]*$cart[4];
                            $tong+=$ttien;
                            $xoasp_td='<td><a href="index.php?act=delcart&idcart='.$i.'"><input type="button" value="Xóa"></a></td>';
                           
                             echo'
                             <tr>
                                   <td><img src="'.$hinh.'" alt="" height="80px" ></td>
                                   <td>'.$cart[1].'</td>
                                   <td>'.$cart[3].'</td>
                                   <td>'.$cart[4].'</td>
                                   <td>'.$ttien.'</td>
                                   '.$xoasp_td.'
                            </tr>';
                            $i+=1;
                      }
                      echo'
                                   <tr>
                                   <td colspan="4">Tổng đơn hàng</td>
                                   <td>'.$tong.'</td>
                                   
                                   </tr>
                            ';
                     ?>
                </table>
                
</div>
</div>
<?php
if(isset($_SESSION['user'])){
?>
<div class="row mb formcontent">
            <a href="index.php?act=xacnhan"><input type="button" value="TIẾP TỤC ĐẶT HÀNG"></a> <a href="index.php?act=delcart"><input type="button" value="XÓA GIỎ HÀNG"></a>
 </div>
<?php
}
?>

   
    
   