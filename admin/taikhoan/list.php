<div class="row">
            <div class="row formtitle">
                <h1>Danh sách tài khoản</h1>
            </div>
            <div class="row formcontent">
                <form action="" method="post">
                    <div class="row mb10 formdsloai">
                       <table>
                            <tr>
                                <th></td>
                                <th>Mã tài khoản</td>
                                <th>Username</td>
                                <th>Password</td>
                                <th>Emai</td>
                                <th>Address</td>
                                <th>Điện thoại</td>
                                <th>Vai trò</td>
                                <th></td>
                            </tr>
                            <?php
                            foreach($listtaikhoan as $taikhoan){
                                extract($taikhoan);
                                
                                $xoatk="index.php?act=xoatk&id=".$id_kh;
                                echo '
                                <tr>
                                <td>
                                    <input type="checkbox" name="" id="">
                                </td>
                                <td>'.$id_kh.'</td>
                                <td>'.$username.'</td>
                                <td>'.$password.'</td>
                                <td>'.$email.'</td>
                                <td>'.$address.'</td>
                                <td>'.$sdt.'</td>
                                <td>'.$role.'</td>
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