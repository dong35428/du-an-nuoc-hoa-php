<div class="row">
            <div class="row formtitle">
                <h1>Danh sách bình luận</h1>
            </div>
            <div class="row formcontent">
                <form action="" method="post">
                    <div class="row mb10 formdsloai">
                       <table>
                            <tr>
                                
                                <th>Mã bình luận</th>
                                <th>Mã sản phẩm</th>
                                <th>Tên tài khoản</th>
                                <th>Thời gian</th>
                                <th>Nội dung</th>
                                <th>Thao tác</th>

                               
                            </tr>
                            <?php
                            foreach($listbinhluan as $binhluan){
                                extract($binhluan);
                                
                                $xoatk="index.php?act=xoabl&id=".$id_bl;
                                echo '
                                <tr>
                                <td>'.$id_bl.'</td>
                                <td>'.$id_sp.'</td>
                                <td>'.$ten.'</td>
                                <td>'.$thoigian.'</td>
                                <td>'.$noidung.'</td>
                               
                                <td>
                                      <a href="'.$xoatk.'"><input type="button" value="Xóa"></a>
                                </td>
                            </tr>
                            ';
                            }
                            ?>
                       </table>
                    </div>
                    <br>
                    <br>
                   
                </form>
            </div>
        </div>