<div class="row menungang">
   <ul>
      <?php
         foreach($dsdm as $dm){
            extract($dm);
            $linkdm="index.php?act=sanpham&iddm=".$id_dm;
            echo '
            <li><a href="'.$linkdm.'">'.$name_dm.'</a></li>';
         }
      ?>
   </ul>
</div>
<div class="row mb content">
   <div class="boxtrai">
      <h1 style="font-size: 1.5vw">DANH MỤC</h1>
      <div class="row menudoc">
      <ul>
      <?php
         foreach($dsdm as $dm){
            extract($dm);
            $linkdm="index.php?act=sanpham&iddm=".$id_dm;
            echo '
            <li><a href="'.$linkdm.'">'.$name_dm.'</a></li>';
         }
      ?>
     </ul>
      </div>
      <div class="row formbutton">
         <p>-----------------------------</p>
         <a href="index.php?act=sale"><input type="button" value="FLAST SALE"></a>
         <p>-----------------------------</p>
      </div>
   </div>
   <div class="row boxphai">
            <?php
               $i=0;
               $sale=0;
               foreach($spnew as $sp){
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
                  <div class="row ">
                  <form action="index.php?act=addtocart" method="post">
                  <input type="hidden" name="id" value="'.$id_sp.'">
                  <input type="hidden" name="name" value="'.$ten_sp.'">
                  <input type="hidden" name="img" value="'.$img.'">
                  <input type="hidden" name="price" value="'.$gia_cu.'">
                  <input type="hidden" name="price" value="'.$gia_moi.'">
                  </form>
                  </div>
               </div>

                  ';
                 
               }
            ?>
         </div>

            <!-- sản phẩm  -->

</div>

