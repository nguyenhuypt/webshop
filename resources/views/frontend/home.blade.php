
@extends('frontend.layouts.main')

@section('content')



    <section class="newproduct bgwhite p-t-45 p-b-85">

        <div class="container">
            @foreach($list as $item)
                <div class="p-b-10">
                    <h3 class="ltext-103 cl5">{{$item['category']->name}}</h3>
                </div>
                <div class="wrap-slick2">
                    <div class="slick2">
                        @foreach($item['products'] as $product)
                            <div class="item-slick2 col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
                                <!-- Block2 -->
                                <div class="block2">
                                    <div class="block2-pic hov-img0">

                                        <a href="{{ route('home.product', ['slug' => $product->slug , 'id' => $product->id]) }}" title="{{ $product->name }}" >
                                            <img width="180" height="250" src="{{asset($product->image)}}" alt="{{$product->name}}">

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
            @endforeach

        </div>

    </section>

    <!-- Banner2 -->
    <section class="banner2 bg5 p-t-55 p-b-55">
        <div class="container">

            <div class="row">
                @if(!empty($banner2))
                    @foreach($banner2 as $banner)
                <div class="col-sm-10 col-md-8 col-lg-6 m-l-r-auto p-t-15 p-b-15">
                    <div class="hov-img-zoom pos-relative">
                        <img src="{{asset($banner->image)}}" alt="IMG-BANNER">

                        <div class="ab-t-l sizefull flex-col-c-m p-l-15 p-r-15">
							<span class="m-text9 p-t-45 fs-20-sm">

							</span>

                            <h3 class="l-text1 fs-35-sm">

                            </h3>

                            <a href="#" class="s-text4 hov2 p-t-20 " style="color: #0B0B61">
                                View Collection
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
                @endif


    <!-- Blog -->
    <section class="blog bgwhite p-t-94 p-b-65">
        <div class="container">
            <div class="sec-title p-b-52">
                <h3 class="m-text5 t-center">
                    Our Blog
                </h3>
            </div>

            <div class="row">
                @if(!empty($articles))
                    @foreach($articles as $article)
                <div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
                    <!-- Block3 -->
                    <div class="block3">
                        <a href="{{route('home.article.detail' , ['slug' => $article->slug , 'id' => $article->id])}}" class="block3-img dis-block hov-img-zoom">
                            <img src="{{asset($article->image)}}" alt="IMG-BLOG">
                        </a>

                        <div class="block3-txt p-t-14">
                            <h4 class="p-b-7">
                                <a href="{{route('home.article.detail' , ['slug' => $article->slug , 'id' => $article->id])}}" class="m-text11">
                                    {{$article->title}}
                                </a>
                            </h4>
                            <div class="s-text8 flex-w flex-m p-b-21">
									<span>
										By Admin
										<span class="m-l-3 m-r-6">|</span>
									</span>

                                <span>
										{{ $article->created_at }}
										<span class="m-l-3 m-r-6">|</span>
									</span>



                                <span>
										8 Comments
									</span>
                            </div>

{{--                            <span class="s-text6">By</span> <span class="s-text7">Nancy Ward</span>--}}
{{--                            <span class="s-text6">on</span> <span class="s-text7">July 22, 2017</span>--}}

{{--                            <p class="s-text8 p-t-16">--}}
{{--                                {{$article->summary}}--}}
{{--                            </p>--}}
                        </div>
                    </div>
                </div>

{{--                <div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">--}}
{{--                    <!-- Block3 -->--}}
{{--                    <div class="block3">--}}
{{--                        <a href="blog-detail.html" class="block3-img dis-block hov-img-zoom">--}}
{{--                            <img src="frontend/images/blog-02.jpg" alt="IMG-BLOG">--}}
{{--                        </a>--}}

{{--                        <div class="block3-txt p-t-14">--}}
{{--                            <h4 class="p-b-7">--}}
{{--                                <a href="blog-detail.html" class="m-text11">--}}
{{--                                    The White Sneakers Nearly Every Fashion Girls Own--}}
{{--                                </a>--}}
{{--                            </h4>--}}

{{--                            <span class="s-text6">By</span> <span class="s-text7">Nancy Ward</span>--}}
{{--                            <span class="s-text6">on</span> <span class="s-text7">July 18, 2017</span>--}}

{{--                            <p class="s-text8 p-t-16">--}}
{{--                                Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex--}}
{{--                                nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}

{{--                <div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">--}}
{{--                    <!-- Block3 -->--}}
{{--                    <div class="block3">--}}
{{--                        <a href="blog-detail.html" class="block3-img dis-block hov-img-zoom">--}}
{{--                            <img src="frontend/images/blog-03.jpg" alt="IMG-BLOG">--}}
{{--                        </a>--}}

{{--                        <div class="block3-txt p-t-14">--}}
{{--                            <h4 class="p-b-7">--}}
{{--                                <a href="blog-detail.html" class="m-text11">--}}
{{--                                    New York SS 2018 Street Style: Annina Mislin--}}
{{--                                </a>--}}
{{--                            </h4>--}}

{{--                            <span class="s-text6">By</span> <span class="s-text7">Nancy Ward</span>--}}
{{--                            <span class="s-text6">on</span> <span class="s-text7">July 2, 2017</span>--}}

{{--                            <p class="s-text8 p-t-16">--}}
{{--                                Proin nec vehicula lorem, a efficitur ex. Nam vehicula nulla vel erat tincidunt, sed--}}
{{--                                hendrerit ligula porttitor. Fusce sit amet maximus nunc--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
                    @endforeach
                @endif
            </div>

        </div>
    </section>

    <!-- Instagram -->

@endsection
