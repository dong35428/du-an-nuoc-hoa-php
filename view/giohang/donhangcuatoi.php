<div class="row mb demo">
       <div class="boxtile">TRẠNG THÁI ĐƠN HÀNG</div>
       <div class="row boxcontent formdsloai">
              <table>
                     <tr>
                            <th>MÃ ĐƠN HÀNG</th>
                            <th>NGÀY ĐẶT</th>
                            <th>Số sản phẩm</th>
                            <th>TỔNG GIÁ TRỊ ĐƠN HÀNG</th>
                            <th>TÌNH TRẠNG ĐƠN HÀNG</th>

                     </tr>
                     <?php
                     if(is_array($listbill)){
                            foreach($listbill as $billdh){
                                   extract($billdh);
                                   $ttdh=get_ttdh($billdh['bill_status']);
                                   $countsp=loadall_giohang_count($billdh['id_dh']);
                                   echo '
                                   <tr>
                                   <td>'.$billdh['id_dh'].'</td>
                                   <td>'.$billdh['ngaydathang'].'</td>
                                   <td>'.$countsp.'</td>
                                   <td>'.$billdh['tongdonhang'].'</td>
                                   <td>'.$ttdh.'</td>
                                   </tr>
                                   ';
                            }
                     }
                     ?>
              </table>

       </div>