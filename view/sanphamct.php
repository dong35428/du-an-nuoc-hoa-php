<div class="row mb ctsp">

    <?php
    $soluong=1;
    $sale=0;
    extract($onesp);
    $sale=100-$gia_moi*100/$gia_cu;
    $ceiled = ceil($sale);
    $imgchinh=$img_path.$img;
    echo '
    <div class="row mb phai">
        
         
    <img src="'.$imgchinh.'" alt="">
        
        
    </div>
    <div class="row mb trai">
        <h1>
            '.$ten_sp.'
        </h1>
        <div class="row mb gia">
            <p>Giá:</p>
            <p><del class="giacu">
                '.$gia_cu.'đ
                </del></p>
            <p>
                '.$gia_moi.'đ
            </p>
            <div class="sale2">
                -'.$ceiled.'%
            </div>
        </div>
        <form action="index.php?act=addtocart" method="post">
        <div class="row mb sl">
            <label for="">Số Lượng: </label>
            <input type="number" name="soluong" id="" min="1" max="30" step="1" value="'.$soluong.'">
        </div>
        <div class="row mb chitiet">
            <p>
                '.$chitiet.'
            </p>
        </div>
        <br>
        
            <input type="hidden" name="id_sp" value="'.$id_sp.'">
            <input type="hidden" name="img" value="'.$img.'">
            <input type="hidden" name="tensp" value="'.$ten_sp.'">
            <input type="hidden" name="gia_moi" value="'.$gia_moi.'">
            
            <input type="submit" value="THÊM VÀO GIỎ HÀNG" name="addtocart">
        </form>
    </div>
    ';
    ?>

</div>
<div class="row mb mota">
    <h1>Mô tả</h1>
    <p>
        <?=$mota?>
    </p>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
        $("#binhluan").load("view/binhluan/binhluanform.php", {id_sp: <?=$id_sp?>});
});

</script>
<div class=" row mb formbinhluan" id="binhluan">
    <div class="titel">Bình Luận</div>
    <div class="formcontentt"></div>
</div>
<div class="row mb cungloai">
    <h1>Sản phẩm tương tự</h1>
    <div class="row mb spcl">
        <?php
               $i=0;
               $sale=0;
               foreach($spcungloai as $spcl){
                  extract($spcl);
                  $linksp="index.php?act=sanphamct&idsp=".$id_sp;
                  $hinh=$img_path.$img;
                  $sale=100-$gia_moi*100/$gia_cu;
                  $ceiled = ceil($sale);
                  echo '<div class="boxsp">
                  <div class="sale">
                   -'.$ceiled.'%
                  </div>
                  <div class="center">
                  <div class="img">
                  <a href="'.$linksp.'"><img src="'.$hinh.'" alt=""></a>
                  </div>
                  <div class="row mb mx"><a href="'.$linksp.'">'.$ten_sp.'</a></div>
                  <p><del>'.$gia_cu.' đ</del></p>
                  <p>'.$gia_moi.' đ </p>
                  </div>
               </div>

                  ';
                }
               ?>
    </div>
    <div class="row">
        <?php
         foreach($dsdm as $dm){
            extract($dm);
            $linkdm="index.php?act=sanpham&iddm=".$id_dm;
            
         }
         echo '
            <li><a href="'.$linkdm.'" '.$name_dm.'>Xem thêm>></a></li>';
      ?>

    </div>
</div>
</div>