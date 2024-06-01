<div class="row">
            <div class="row formtitle">
                <h1>DANH SÁCH LOẠI HÀNG</h1>
            </div>
            <div class="row formcontent">
                <form action="" method="post">
                    <div class="row mb formdsloai">
                       <table>
                            <tr>
                                <th></td>
                                <th>Mã loại</td>
                                <th>Tên loại</td>
                                <th></td>
                            </tr>
                            <?php
                            foreach($listdanhmuc as $danhmuc){
                                extract($danhmuc);
                                $suadm="index.php?act=suadm&id=".$id_dm;
                                $xoadm="index.php?act=xoadm&id=".$id_dm;
                                echo '
                                <tr>
                                <td>
                                    <input type="checkbox" name="" id="">
                                </td>
                                <td>'.$id_dm.'</td>
                                <td>'.$name_dm.'</td>
                                <td>
                                    <a href="'.$suadm.'"><input type="button" value="Sửa"></a>  <a href="'.$xoadm.'"><input type="button" value="Xóa"></a>
                                </td>
                            </tr>
                            ';
                            }
                            ?>
                       </table>
                    </div>
                    <div class="row mb">
                        <a href="index.php?act=adddm"><input type="button" value="Nhập thêm"></a> 
                    </div>
                </form>
            </div>
        </div>