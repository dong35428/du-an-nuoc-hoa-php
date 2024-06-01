<div class=" row formdsloai">
    <table>
        <tr>
            <th>MÃ ĐƠN HÀNG</th>
            <th>KHÁCH HÀNG</th>
            <th>SỐ LƯỢNG HÀNG</th>
            <th>GIÁ TRỊ ĐƠN HÀNG</th>
            <th>TÌNH TRẠNG ĐƠN HÀNG</th>
            <th>THAO TÁC</th>
        </tr>
        <?php
          foreach($listbill as $bill){
            extract($bill);
            $kh='Tên:'.$bill["name"].'
            <br>Email:'.$bill["email"].'
            <br>Địa chỉ: '.$bill["address"].'
            <br>Sdt:'.$bill["sdt"].'
            ';
            $count=loadall_giohang_count($bill['id_dh']);
            $ttdh=get_ttdh($bill['bill_status']);
            $suadh="index.php?act=suadh&id=".$id_dh;
            $xoadh="index.php?act=xoadh&id=".$id_dh;

            echo'
            <tr>
            <td>'.$bill['id_dh'].'</td>
            <td>'.$kh.'</td>
            <td>'.$count.'</td>
            <td>'.$bill['tongdonhang'].'</td>
            <td>'.$ttdh.'</td>
            <td>
            <a href="'.$suadh.'"><input type="button" value="Sửa"></a>  <a href="'.$xoadh.'"><input type="button" value="Xóa"></a></td>
            
        </tr>
            ';
          }
        ?>
        
    </table>
</div>