<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/frontend/images/icons/favicon.png"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/fonts/themify/themify-icons.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/fonts/elegant-font/html-css/style.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/vendor/lightbox2/css/lightbox.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/frontend/css/util.css">
    <link rel="stylesheet" type="text/css" href="/frontend/css/main.css">
    <!--===============================================================================================-->
</head>
<body class="animsition">

<!-- Header -->

@include('frontend.layouts.header')


<!-- Slide1 -->
{{--@include('frontend.layouts.banner')--}}

<!-- New Product -->


@yield('contact')

<!-- Footer -->

@include('frontend.layouts.footer')


<!-- Back to top -->
<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
</div>

<!-- Container Selection1 -->
<div id="dropDownSelect1"></div>



<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/bootstrap/js/popper.js"></script>
<script type="text/javascript" src="/frontend/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/select2/select2.min.js"></script>
<script type="text/javascript">
    $(".selection-1").select2({
        minimumResultsForSearch: 20,
        dropdownParent: $('#dropDownSelect1')
    });
</script>
<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/slick/slick.min.js"></script>
<script type="text/javascript" src="/frontend/js/slick-custom.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/lightbox2/js/lightbox.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="/frontend/vendor/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript">
    $('.block2-btn-addcart').each(function(){
        var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
        });
    });

    $('.block2-btn-addwishlist').each(function(){
        var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");
        });
    });

    /*
*
* Credits to https://css-tricks.com/long-dropdowns-solution/
*
*/

    var maxHeight = 400;

    $(function(){

        $(".dropdown > li").hover(function() {

            var $container = $(this),
                $list = $container.find("ul"),
                $anchor = $container.find("a"),
                height = $list.height() * 1.1,       // make sure there is enough room at the bottom
                multiplier = height / maxHeight;     // needs to move faster if list is taller

            // need to save height here so it can revert on mouseout
            $container.data("origHeight", $container.height());

            // so it can retain it's rollover color all the while the dropdown is open
            $anchor.addClass("hover");

            // make sure dropdown appears directly below parent list item
            $list
                .show()
                .css({
                    paddingTop: $container.data("origHeight")
                });

            // don't do any animation if list shorter than max
            if (multiplier > 1) {
                $container
                    .css({
                        height: maxHeight,
                        overflow: "hidden"
                    })
                    .mousemove(function(e) {
                        var offset = $container.offset();
                        var relativeY = ((e.pageY - offset.top) * multiplier) - ($container.data("origHeight") * multiplier);
                        if (relativeY > $container.data("origHeight")) {
                            $list.css("top", -relativeY + $container.data("origHeight"));
                        };
                    });
            }

        }, function() {

            var $el = $(this);

            // put things back to normal
            $el
                .height($(this).data("origHeight"))
                .find("ul")
                .css({ top: 0 })
                .hide()
                .end()
                .find("a")
                .removeClass("hover");

        });

    });




</script>

<!--===============================================================================================-->
<script src="/frontend/js/main.js"></script>

</body>
</html>