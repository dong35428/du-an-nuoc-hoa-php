
        <div class="row mb demo">
            <div class="boxtile">Cảm ơn</div>
            <div class="row boxcontent formdsloai" style="text-align:center">
                <h2>Cảm ơn quý khách đã đặt hàng</h2>
            </div>
        </div>

<?php
    if(isset($bill)&&(is_array($bill))){
        extract($bill);
    }
?>

        <div class="row mb demo">
            <div class="boxtile">Mã</div>
            <div class="row boxcontent" style="">
                <li>Mã đơn hàng: <?=$bill['id_dh'];?></li>  <li>Ngày đặt hàng: <?=$bill['ngaydathang'];?></li>  <li>Tổng đơn hàng: <?=$bill['tongdonhang'];?></li>  <li>Phương thức thanh toán: <?=$bill['pttt'];?></li>  
            </div>
        </div>
        
       
        
        <div class="row mb demo">
            <div class="boxtile">Thông tin đơn hàng</div>
            <div class="row boxcontent formdsloai">
                <table>
                    <tr>
                        <td>Người đặt hàng</td>
                        <td><?=$bill['name'];?></td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td><?=$bill['address'];?></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><?=$bill['email'];?></td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td><?=$bill['sdt'];?></td>
                    </tr>
                </table>
            </div>
        </div>

         
        <div class="row mb demo">
            <div class="boxtile">Chi tiết đơn hàng </div>
            <div class="row boxcontent formdsloai">
            <table >
                <tr>
                       <th>Hình</th>
                       <th>Sản Phẩm</th>
                       <th>Đơn Giá</th>
                       <th>Số Lượng</th>
                       <th>Thành Tiền</th>
                       
                </tr>
                     <?php
                     $tong=0;
                     $i=0;
                     
                     foreach($billct as $cart){
                        $hinh=$img_path.$cart['img'];
                        $tong+=$cart['thanhtien'];
                         
                         echo'
                        
                         <tr>
                         <td><img src="'.$hinh.'" alt="" height="80px"></td>
                         <td>'.$cart['name'].'</td>
                         <td>'.$cart['price'].'</td>
                         <td>'.$cart['soluong'].'</td>
                         <td>'.$cart['thanhtien'].'</td>
                         
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
     
    
</div>