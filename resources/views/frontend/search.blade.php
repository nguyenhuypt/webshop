@extends('frontend.layouts.main')

@section('content')

    <!-- breadcrumb -->
    <section class="relateproduct bgwhite p-t-45 p-b-138">
        <div class="container">


            <!-- Relate Product -->


            <div class="right-all-product">
                <!-- PRODUCT-CATEGORY-HEADER END -->
                <div class="product-category-title">
                    <!-- PRODUCT-CATEGORY-TITLE START -->
                    <h3>
                        <span class="cat-name">Từ khóa tìm kiếm "{{ $keyword }}" ({{ $totalResult }})</span>
                    </h3>
                    <!-- PRODUCT-CATEGORY-TITLE END -->
                </div>
            </div>
            <br><br>

            <!-- Slide2 -->
            <div class="wrap-slick2">
                <div class="slick2">
                    @foreach($products as $product)
                    <div class="item-slick2 p-l-15 p-r-15">
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
