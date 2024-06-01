<div class="row">
    

<form action="index.php?act=dongydathang" onsubmit="return validate()" method="post" >
<div class="row mb demo">
    <div class="boxtile">Thông Tin Đặt Hàng</div>
    <div class="row boxcontent formdsloai">
        <table>
            <?php
            if(isset($_SESSION['user'])){
                $name=$_SESSION['user']['username'];
                $address=$_SESSION['user']['address'];
                $email=$_SESSION['user']['email'];
                $sdt=$_SESSION['user']['sdt'];
            }
            else{
                $name="";
                $address="";
                $email="";
                $tel="";
            }
            ?>
            <tr>
                <td>Người đăt hàng</td>
                <td><input type="text" name="name" value="<?=$name?>"></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><input type="text" name="address" value="<?=$address?>"></td>
                <span name="address_err" style="color: red;"></span>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<?=$email?>"></td>
            </tr>
            <tr>
                <td>Điện thoại</td>
                <td><input type="text" name="sdt" value="<?=$sdt?>"></td>
                <span name="sodienthoai_err" style="color: red;"></span>
            </tr>
        </table>

    </div>
</div>
<div class="row mb demo">
    <div class="boxtile">PHƯƠNG THỨC THANH TOÁN</div>
    <div class="row boxcontent">
        <table>
            <tr>
                <td><input type="radio" name="pttt" value="1" checked> Trả tiền khi thanh toán</td>
                <td><input type="radio" name="pttt" value="2"> Chuyển khoản ngân hàng</td>
                <td><input type="radio" name="pttt" value="3" > Thanh toán online</td>
            </tr>
        </table>
    </div>
</div>

<div class="row mb demo">
    <div class="boxtile">THÔNG TIN GIỎ HÀNG</div>
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
                     
                     foreach($_SESSION['mycart'] as $cart){
                            $hinh=$img_path.$cart[2];
                            $ttien=$cart[3]*$cart[4];
                            $tong+=$ttien;
                            
                           
                             echo'
                             <tr>
                                   <td><img src="'.$hinh.'" alt="" height="80px" ></td>
                                   <td>'.$cart[1].'</td>
                                   <td>'.$cart[3].'</td>
                                   <td>'.$cart[4].'</td>
                                   <td>'.$ttien.'</td>
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
<div class="row mb formcontent">
    <a href="index.php?act=thongtinbill"><input type="submit" value="ĐỒNG Ý ĐẶT HÀNG" name="dongydathang"></a>
</div>
</form>

</div>