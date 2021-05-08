<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
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
<body class="animsition" onload="onloadAjax()">

<!-- Header -->
@include('frontend.layouts.header')

<!-- Slide1 -->
@include('frontend.layouts.sidebar')

<!-- Banner -->

@yield('contact')

@yield('content')



<!-- New Product -->


<!-- Footer -->
@include('frontend.layouts.footer')

<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
</div>


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

    $(".selection-2").select2({
        minimumResultsForSearch: 20,
        dropdownParent: $('#dropDownSelect2')
    });
</script>
{{--<script>--}}
{{--    $(".js-select2").each(function () {--}}
{{--        $(this).select2({--}}
{{--            minimumResultsForSearch: 20,--}}
{{--            dropdownParent: $(this).next('.dropDownSelect2')--}}
{{--        });--}}
{{--    })--}}
{{--</script>--}}
{{--<script type="text/javascript">--}}
{{--    $(".selection-1").select2({--}}
{{--        minimumResultsForSearch: 20,--}}
{{--        dropdownParent: $('#dropDownSelect1')--}}
{{--    });--}}
{{--</script>--}}
<script type="text/javascript">
    var base_url = '{{ url('/') }}';
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
{{--<script>--}}
{{--    $('.parallax100').parallax100();--}}
{{--</script>--}}
<script type="text/javascript">
    $('.block2-btn-addcart').each(function () {
        var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        $(this).on('click', function () {
            swal(nameProduct, "is added to cart !", "success");
        });
    });

    $('.block2-btn-addwishlist').each(function () {
        var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        $(this).on('click', function () {
            swal(nameProduct, "is added to wishlist !", "success");
        });
    });
    // $('.btn-addcart-product-detail').each(function(){
    //     var nameProduct = $('.product-detail-name').html();
    //     $(this).on('click', function(){
    //         swal(nameProduct, "is added to wishlist !", "success");
    //     });
    // });
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>


<!--===============================================================================================-->
<script src="/frontend/js/main.js"></script>
<script src="/frontend/js/my_javascript.js"></script>
@yield('myJs')



</body>
</html>
