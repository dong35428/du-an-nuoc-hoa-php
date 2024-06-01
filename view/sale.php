<div class="row saletong">
    <div class="row spsal">
        <h1>SALE HOT</h1>
        <div class=" sale1">
        <?php
               
               $sale=0;
               foreach($saletong as $sale){
                  extract($sale);
                  $linksp="index.php?act=sanphamct&idsp=".$id_sp;
                  $hinh=$img_path.$img;
                  $sale=100-($gia_moi*100)/$gia_cu;
                  $ceiled = ceil($sale);
                  
                  echo '<div class="boxsp4">
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
    </div>
</div>