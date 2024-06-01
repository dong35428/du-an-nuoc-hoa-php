<div class="row">
            <div class="row formtitle mb">
                <h1>DANH SÁCH LOẠI HÀNG</h1>
            </div>
            <form action="" method="post">
                            <input type="text" name="kyw">
                            <select name="iddm" id="">
                                <option value="0" selected>Tất cả</option>
                            <?php
                                foreach($listdanhmuc as $danhmuc){
                                    extract($danhmuc);
                                    echo '<option value="'.$id_dm.'">'.$name_dm.'</option>';

                            }
                            ?>
                            
                            </select>
                            <input type="submit" name="listok" value="Go">
             </form> <br><br>
            <div class="row formcontent">
                <form action="" method="post">
                    <div class="row mb formdsloai">
                       
                       <table>
                            <tr>
                                <th>STT</td>
                                <th>Mã sản phẩm</td>
                                <th>Tên sản phẩm</td>
                                <th>Hình</td>
                                <th>Giá cũ</td>
                                <th>Giá mới</td>
                                <th>Lượt xem</td>
                                <th>Mô tả</td>
                                <th>Chi tiết</td>
                                <th>Thao Tác</td>
                            </tr>
                            <?php
                            $stt=0;
                            foreach($listsanpham as $sanpham){
                                extract($sanpham);

                                $suasp="index.php?act=suasp&id=".$id_sp;
                                $xoasp="index.php?act=xoasp&id=".$id_sp;
                                $hinhpath="../uploads/".$img;
                                if(is_file($hinhpath)){
                                    $hinh="<img src='".$hinhpath."' height='80' width: 100%;>";
                                }
                                else{
                                    $hinh="Không có hình";
                                }
                                echo '
                                <tr>
                                <td>
                                   '.$stt++.'
                                </td>
                                <td>'.$id_sp.'</td>
                                <td>'.$ten_sp.'</td>
                                <td>'.$hinh.'</td>
                                <td>'.$gia_cu.'</td>
                                <td>'.$gia_moi.'</td>
                                <td>'.$luotxem.'</td>
                                <td>'.$mota.'</td>
                                <td>'.$chitiet.'</td>
                                <td>
                                    <a href="'.$suasp.'"><input type="button" value="Sửa"></a>  <a href="'.$xoasp.'"><input type="button" value="Xóa"></a>
                                </td>
                            </tr>
                            ';
                            }
                            ?>
                       </table>
                    </div>
                    <div class="row mb">
                        <a href="index.php?act=addsp"><input type="button" value="Nhập thêm"></a> 
                    </div>
                </form>
            </div>
        </div>