
    
        <div class="row mb formtaikhoan">
            <h1>QUÊN MẬT KHẨU</h1>
            <div class="row formtaikhoan">
                <form action="index.php?act=quenmk" method="post">
                    <LAbel>Email</LAbel><br>
                    <input type="email" name="email" id=""><br><br>
                    <input type="submit" value="Giửi" name="giuiemail">
                   
                </form>
                <h2 class="thongbao">
                <?php
                if(isset($thongbao)&&($thongbao!="")){
                    echo $thongbao;
                }
                
                ?>
                </h2>
            </div>
        </div>
    
    
   
