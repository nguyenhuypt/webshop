<style>
    .wrapper {
        float: left;
        width: 100%;
        min-height: 250px;
    }

    .navigation {
        float: left;
        width: 100%;
        text-align: center;
    }

    .navigation ul {
        margin: 0;
        padding: 0;
        float: none;
        width: auto;
        list-style: none;
        display: inline-block;
    }

    .navigation ul li {
        float: left;
        width: auto;
        margin-right: 60px;
        position: relative;
    }

    .navigation ul li:last-child {
        margin: 0;
    }

    .navigation ul li a {
        float: left;
        width: 100%;
        color: #333;
        padding: 16px 0;
        font-size: 20px;
        line-height: normal;
        text-decoration: none;
        box-sizing: border-box;
        text-transform: uppercase;
        font-family: 'Montserrat', sans-serif;
        -webkit-transition: color 0.3s ease;
        transition: color 0.3s ease;
    }

    .navigation .children {
        position: absolute;
        top: 100%;
        z-index: 1000;
        margin: 0;
        padding: 0;
        left: 0;
        min-width: 240px;
        background-color: #fff;
        border: solid 1px #dbdbdb;
        opacity: 0;
        -webkit-transform-origin: 0% 0%;
        transform-origin: 0% 0%;
        -webkit-transition: opacity 0.3s, -webkit-transform 0.3s;
        transition: opacity 0.3s, -webkit-transform 0.3s;
        transition: transform 0.3s, opacity 0.3s;
        transition: transform 0.3s, opacity 0.3s, -webkit-transform 0.3s;
    }

    .navigation ul li .children {
        -webkit-transform-style: preserve-3d;
        transform-style: preserve-3d;
        -webkit-transform: rotateX(-75deg);
        transform: rotateX(-75deg);
        visibility: hidden;
    }

    .navigation ul li:hover > .children {
        -webkit-transform: rotateX(0deg);
        transform: rotateX(0deg);
        opacity: 1;
        visibility: visible;
    }

    .navigation ul li .children .children {
        left: 100%;
        top: 0;
    }

    .navigation ul li.last .children {
        right: 0;
        left: auto;
    }

    .navigation ul li.last .children .children {
        right: 100%;
        left: auto;
    }

    .navigation ul li .children li {
        float: left;
        width: 100%;
        margin: 0;
    }

    .navigation ul li .children a {
        display: block;
        font-family: "Montserrat", sans-serif;
        text-transform: uppercase;
        font-weight: 700;
        font-size: 13px;
        color: #333;
        text-align: left;
        line-height: 1.5em;
        padding: 16px 30px;
        letter-spacing: normal;
        border-bottom: 1px solid #dbdbdb;
        -webkit-transition: background-color 0.3s ease;
        transition: background-color 0.3s ease;
    }

    .navigation ul li .children a:hover {
        color: #fff;
        background-color: goldenrod;
    }

    .navigation ul li a:hover {
        color: goldenrod;
    }
    .bb {
        width: 350px;
    }


</style>
<header class="header1">
    <!-- Header desktop -->
    <div class="container-menu-header">
        <div class="topbar">
            <div class="topbar-social">
                <a href="#" class="topbar-social-item fa fa-facebook"></a>
                <a href="#" class="topbar-social-item fa fa-instagram"></a>
                <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
                <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
                <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
            </div>



            <div class="topbar-child2 rightbar">
                <form action="{{ route('home.search') }}" method="GET" class="search-form-cat">
                <div class="pos-relative bo11 of-hidden bb">
                    <input class="s-text7 size16 p-l-23 p-r-50" type="text" name="search-product" placeholder="Nhập từ khóa tìm kiếm">

                    <button class="flex-c-m size5 ab-r-m color1 color0-hov trans-0-4">
                        <i class="fs-13 fa fa-search" aria-hidden="true"></i>
                    </button>
                </div>
                </form>

                <div class="topbar-language rs1-select2" style="width: 200px">
                    <select class="selection-1" name="cityCart" id="option-Country">
                        <option value="" style="text-align: center">Hà Nội</option>

                    </select>
                </div>
            </div>
        </div>

        <div class="wrap_header">
            <!-- Logo -->
            <a href="/" class="logo">
                <img src="/frontend/images/icons/logo.png" alt="IMG-LOGO">
            </a>

            <!-- Menu -->
            <div class="wrap_menu">
                <nav class="navigation">
                    <ul>

                        <li class="last">
                            <a href="/">Trang Chủ</a>
                        </li>

                        @foreach($categories as $cate)
                            @if($cate->parent_id == 0)
                                <li>
                                    <a href="{{route('home.category',[ 'slug' => $cate->slug])}}">{{$cate->name}}</a>
                                    <ul class="children sub-menu">
                                        @foreach($categories as $child)
                                            @if($child->parent_id == $cate->id)
                                                <a class="dropdown-item" href="{{route('home.category',[ 'slug' => $child->slug ])}}">{{ $child->name }}</a>
                                            @endif
                                        @endforeach
                                    </ul>
                                </li>
                            @endif
                        @endforeach

                        <li class="last">
                            <a href="{{ route('home.article')}}">Tin Tức</a>
                        </li>
{{--                        <li class="last">--}}
{{--                            <a href="{{route('home.contact')}}">Contact Us</a>--}}
{{--                        </li>--}}

                    </ul>
                </nav>
            </div>

            <!-- Header Icon -->
            <div class="header-icons">
                {{--                <a href="#" class="header-wrapicon1 dis-block">--}}
                {{--                    <img src="/frontend/images/icons/icon-header-01.png" class="header-icon1" alt="ICON">--}}
                {{--                </a>--}}

                {{--                <span class="linedivide1"></span>--}}

                <div class="header-wrapicon2">
                    <a href="{{route('home.cart')}}"><img src="/frontend/images/icons/icon-header-02.png"
                                                          class="header-icon1-noti js-show-header-dropdown" alt="ICON"></a>
                    <span class="header-icons-noti">5</span>


                </div>
            </div>
        </div>
    </div>

    <!-- Header Mobile -->
    <div class="wrap_header_mobile">
        <!-- Logo moblie -->
        <a href="index.html" class="logo-mobile">
            <img src="/frontend/images/icons/logo.png" alt="IMG-LOGO">
        </a>

        <!-- Button show menu -->
        <div class="btn-show-menu">
            <!-- Header Icon mobile -->
            <div class="header-icons-mobile">
                <a href="#" class="header-wrapicon1 dis-block">
                    <img src="/frontend/images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
                </a>

                <span class="linedivide2"></span>

                <div class="header-wrapicon2">
                    <img src="/frontend/images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown"
                         alt="ICON">
                    <span class="header-icons-noti">0</span>

                    <!-- Header cart noti -->
                    <div class="header-cart header-dropdown">
                        <ul class="header-cart-wrapitem">
                            <li class="header-cart-item">
                                <div class="header-cart-item-img">
                                    <img src="/frontend/images/item-cart-01.jpg" alt="IMG">
                                </div>

                                <div class="header-cart-item-txt">
                                    <a href="#" class="header-cart-item-name">
                                        White Shirt With Pleat Detail Back
                                    </a>

                                    <span class="header-cart-item-info">
											1 x $19.00
										</span>
                                </div>
                            </li>

                            <li class="header-cart-item">
                                <div class="header-cart-item-img">
                                    <img src="/frontend/images/item-cart-02.jpg" alt="IMG">
                                </div>

                                <div class="header-cart-item-txt">
                                    <a href="#" class="header-cart-item-name">
                                        Converse All Star Hi Black Canvas
                                    </a>

                                    <span class="header-cart-item-info">
											1 x $39.00
										</span>
                                </div>
                            </li>

                            <li class="header-cart-item">
                                <div class="header-cart-item-img">
                                    <img src="/frontend/images/item-cart-03.jpg" alt="IMG">
                                </div>

                                <div class="header-cart-item-txt">
                                    <a href="#" class="header-cart-item-name">
                                        Nixon Porter Leather Watch In Tan
                                    </a>

                                    <span class="header-cart-item-info">
											1 x $17.00
										</span>
                                </div>
                            </li>
                        </ul>

                        <div class="header-cart-total">
                            Total: $75.00
                        </div>

                        <div class="header-cart-buttons">
                            <div class="header-cart-wrapbtn">
                                <!-- Button -->
                                <a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                    View Cart
                                </a>
                            </div>

                            <div class="header-cart-wrapbtn">
                                <!-- Button -->
                                <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                    Check Out
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
            </div>
        </div>
    </div>

    <!-- Menu Mobile -->
    <div class="wrap-side-menu">
        <nav class="side-menu">
            <ul class="main-menu">
                <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<span class="topbar-child1">
							Free shipping for standard order over $100
						</span>
                </li>

                <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
                    <div class="topbar-child2-mobile">
							<span class="topbar-email">
								fashe@example.com
							</span>

                        <div class="topbar-language rs1-select2">
                            <select class="selection-1" name="time">
                                <option>USD</option>
                                <option>EUR</option>
                            </select>
                        </div>
                    </div>
                </li>

                <li class="item-topbar-mobile p-l-10">
                    <div class="topbar-social-mobile">
                        <a href="#" class="topbar-social-item fa fa-facebook"></a>
                        <a href="#" class="topbar-social-item fa fa-instagram"></a>
                        <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
                        <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
                        <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
                    </div>
                </li>

                <li class="item-menu-mobile">
                    <a href="index.html">Home</a>
                    <ul class="sub-menu">
                        <li><a href="index.html">Homepage V1</a></li>
                        <li><a href="home-02.html">Homepage V2</a></li>
                        <li><a href="home-03.html">Homepage V3</a></li>
                    </ul>
                    <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                </li>

                <li class="item-menu-mobile">
                    <a href="product.html">Shop</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="product.html">Sale</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="cart.html">Features</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="blog.html">Blog</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="about.html">About</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="contact.html">Contact</a>
                </li>
            </ul>
        </nav>
    </div>
</header>

@section('myJs')
    <script>
        function onloadAjax()
        {
            $.ajax({
                url: 'https://vapi.vnappmob.com/api/province/',
                method: 'get',
                dataType: 'json',
                statusCode:{
                    200:function (response) {
                        var arrCity = response.results;
                        arrCity.map(item => {
                            $('#option-Country').append('<option data-id-city="'+item.province_id+'" value="'+item.province_name+'">'+item.province_name+'</option>');
                        });
                    }
                },
            });
        }

        $('#option-District').change(function () {
            var idDistrict = $('#option-District').select2().find(":selected").data("id-district");
            $('#rm_option-Ward').siblings().remove();
            $.ajax({
                url: 'https://vapi.vnappmob.com/api/province/ward/'+idDistrict,
                method: 'get',
                dataType: 'json',
                statusCode:{
                    200:function (response) {
                        var arrWard = response.results;
                        arrWard.map(item => {
                            $('#option-Ward').append('<option value="'+item.ward_name+'">'+item.ward_name+'</option>');
                        });
                    }
                },
            });
        });
    </script>
@endsection
