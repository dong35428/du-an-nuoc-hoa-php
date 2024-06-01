<div class="row mb footer">
    <div class="boxfooter">
        <img src="nuochoa/logo1.png" alt="">
    </div>
    <div class="boxfooter">
        <img src="" alt="">
    </div>
    <div class="row boxfooter">
        <h4>HỆ THỐNG SHOWROM</h4>
        <div class="add mrb10">SHOWROM 1: 70 Tuệ Tính, Hai bà Trưng , Hà nội( Sát ngã tư Bà triệu - Tuệ Tĩnh)
        </div>

    </div>
    <div class=" row boxfooter">
        <H4>HỖ TRỢ KHÁCH HÀNG</H4>
        <div class="add mrb10">Cách Thức mua hàng</div>
        <div class="add mrb10">Chính sách bảo mật</div>
        <div class="add mrb10">Chính sách bảo hành và đổi hàng</div>
    </div>
    <div class="row boxfooter">
        <H4>VỀ CHÚNG TÔI</H4>
        <div class="add mrb10">Giới thiệu</div>
        <div class="add mrb10">Hệ Thống Showrom</div>
        <div class="add mrb10">Liên hệ</div>
    </div>

</div>

</div>

</div>
</body>
<script>
    var img = document.getElementById('img');

    var imgArr = ['slider-11.webp', 'slider-13.webp', 'slider-12.webp']
    var length = imgArr.length;
    var index = 0;
    var t = null;
    var check = false;
    if (check == false) {
        setInterval(function () {
            index++;
            if (index >= length) {
                index = 0;
            }
            img.src = 'nuochoa/' + imgArr[index]
        }, 600)
    }
    check = true;

   
     // validate
     
    

</script>

</html>