@extends('frontend.layouts.main')

@section('content')

    <div class="container bgwhite p-t-35 p-b-80">
        <div class="flex-w flex-sb">
            <div class="w-size13 p-t-30 respon5">
                <div class="wrap-slick3 flex-sb flex-w">

                    <div class="slick3">
                        <div class="item-slick3" data-thumb="images/thumb-item-01.jpg">
                            <div class="wrap-pic-w">
                                <img src="{{asset($product->image)}}" alt="IMG-PRODUCT">
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <div class="w-size14 p-t-30 respon5">
                <h4 class="product-detail-name m-text16 p-b-13">
                    {{$product->name}}
                </h4>

                <span class="m-text17">
					{{number_format($product->price,0,",",".")}} đ
				</span>

                <hr>
                <h5>Tình trạng :
                    @if ($product->stock > 0)
                        <span style="color: green">CÒN HÀNG</span>
                    @else
                        <span style="color: red">HẾT HÀNG</span>
                    @endif
                </h5>
                <hr>
                <!--  -->
                <div class="p-t-33 p-b-60">







                        <div class="w-size16 flex-m flex-w">
                            <div class="flex-w bo5 of-hidden m-r-22 m-t-10 m-b-10">
                                <button class="btn-num-product-down color1 flex-c-m size7 bg8 eff2">
                                    <i class="fs-12 fa fa-minus" aria-hidden="true"></i>
                                </button>

                                <input class="size8 m-text18 t-center num-product" type="number" name="num-product"
                                       value="1">

                                <button class="btn-num-product-up color1 flex-c-m size7 bg8 eff2">
                                    <i class="fs-12 fa fa-plus" aria-hidden="true"></i>
                                </button>
                            </div>

                            <div class="btn-addcart-product-detail size9 trans-0-4 m-t-10 m-b-10">
                                <!-- Button -->
                                <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4"  onclick="addToCart('{{$product->name}}')">
                                    Add to Cart
                                </button>
                            </div>
                        </div>

                </div>

                <div class="p-b-45">
                    <span class="s-text8 m-r-35">{{$product->sku}}</span>

                </div>

                <!--  -->
                <div class="wrap-dropdown-content bo6 p-t-15 p-b-14 active-dropdown-content">
                    <h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
                        Tóm tắt
                        <i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
                        <i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
                    </h5>

                    <div class="dropdown-content dis-none p-t-15 p-b-23">
                        <p class="s-text8">
                            {{$product->summary}}
                        </p>
                    </div>
                </div>

                <div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
                    <h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
                        Mô tả
                        <i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
                        <i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
                    </h5>

                    <div class="dropdown-content dis-none p-t-15 p-b-23">
                        <p class="s-text8">
                            {{$product->description}}
                        </p>
                    </div>
                </div>

                <div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
                    <h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
                        Reviews (0)
                        <i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
                        <i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
                    </h5>

                    <div class="dropdown-content dis-none p-t-15 p-b-23">
                        <p class="s-text8">
                            Fusce ornare mi vel risus porttitor dignissim. Nunc eget risus at ipsum blandit ornare vel
                            sed velit. Proin gravida arcu nisl, a dignissim mauris placerat
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="relateproduct bgwhite p-t-45 p-b-138">
        <div class="container">
            <div class="sec-title p-b-60">
                <h3 class="m-text5 t-center">
                    SẢN PHẨM TƯƠNG TỰ
                </h3>
            </div>

            <!-- Slide2 -->
            <div class="wrap-slick2">
                <div class="slick2">
                    @foreach($sameProducts as $product)
                        <div class="item-slick2 col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">

                                    <a href="{{ route('home.product', ['slug' => $product->slug , 'id' => $product->id]) }}" title="{{ $product->name }}" >
                                        <img width="220" height="250" src="{{asset($product->image)}}" alt="{{$product->name}}">

                                    </a>

                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="{{ route('home.product', ['slug' => $product->slug , 'id' => $product->id]) }}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">{{$product->name}}</a>

                                        <span class="block2-oldprice m-text7 p-r-5">
										{{ number_format($product->sale, 0,",",".") }}đ
									</span>

                                        <span class="block2-newprice m-text8 p-r-5">
										{{ number_format($product->price,0,",",".") }}đ
									</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
    </section>




@endsection


