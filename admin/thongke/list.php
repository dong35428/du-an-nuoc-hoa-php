<div class="row">
            <div class="row formtitle">
                <h1>Danh sách thông kê</h1>
            </div>
            <div class="row formcontent">
                <form action="index.php?act=bieudo" method="post">
                    <div class="row mb formdsloai">
                       <table>
                            <tr>
                                
                                
                                <th>TÊN DANH MỤC</td>
                                <th>SỐ LƯỢNG</td>
                                <th>GIÁ CAO NHẤT</td>
                                <th>GIÁ THẤP NHẤT</td>
                                <th>GIÁ TRUNG BÌNH</td>
                                
                                
                            </tr>
                            <?php
                            foreach($listthongke as $tk){
                                extract($tk);
                                echo '
                                <tr>
                                <td>'.$tendm.'</td>
                                <td>'.$countsp.'</td>
                                <td>'.$mingia.'</td>
                                <td>'.$maxgia.'</td>
                                <td>'.$tbgia.'</td>
                               
                            </tr>

                                ';

                            }
                            ?>
                           
                            
                           
                       </table>
                       <BR></BR>
                       <input type="submit" name="bieudo" value="Biểu đồ">
                    </div>
                    
                    
                   
                </form>
            </div>
        </div>
        