<div class="row content">
    <div class="row mb banner ">
        <a href=""><img src="nuochoa/slider-12.webp" alt="" id="img"></a>
    </div>
</div>
<div class="row tieude">
    <h1>FLASE SALE</h1>
</div>
<div class="row sale1">
    <?php
               
               $sale=0;
               foreach($salehome as $sp){
                  extract($sp);
                  $linksp="index.php?act=sanphamct&idsp=".$id_sp;
                  $hinh=$img_path.$img;
                  $sale=100-($gia_moi*100)/$gia_cu;
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
<div class="row xemthem">
    <a href="index.php?act=sale">XEM THÊM</a>
</div>

<div class="row banner2">
    <a href=""><img src="nuochoa/slider-12.webp" alt=""></a>
    <a href=""><img src="nuochoa/slider-13.webp" alt=""></a>
</div>

<div class="row top10">
    <div class="sptop10">
    <div class="row tieude1">
        <h1>TOP 10 SẢN PHẨM YÊU THÍCH NHẤT</h1>
    </div>
    <div class="row sale1">
        <?php
               
               $sale=0;
               foreach($yeuthich as $yt){
                  extract($yt);
                  $linksp="index.php?act=sanphamct&idsp=".$id_sp;
                  $hinh=$img_path.$img;
                  $sale=100-($gia_moi*100)/$gia_cu;
                  $ceiled = ceil($sale);
                  
                  echo '<div class="boxsp">
                  <div class="sale">
                   -'.$ceiled.'%
                  </div>
                  <div class="center">
                  <div class="img">
                  <a href="'.$linksp.'"><img src="'.$hinh.'" alt=""></a>
                  </div>
                  <div class="row mx"><a href="'.$linksp.'">'.$ten_sp.'</a></div>
                  
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

<div class="row spmoi">
    <div class="row tieude1">
        <h1>SẢN PHẨM MỚI</h1>
    </div>
    <div class="row sale1">
        <?php
               
               $sale=0;
               foreach($spmoi as $moi){
                  extract($moi);
                  $linksp="index.php?act=sanphamct&idsp=".$id_sp;
                  $hinh=$img_path.$img;
                  $sale=100-($gia_moi*100)/$gia_cu;
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


</div>