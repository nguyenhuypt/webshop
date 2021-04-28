@extends('frontend.layouts.main')

@section('content')
    <!-- Title Page -->
{{--    <section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url('frontend/images/banner04.png');width: 100%;height: 100%">--}}
{{--        <h2 class="l-text2 t-center">--}}

{{--        </h2>--}}
{{--    </section>--}}

    <!-- content page -->
    <section class="bgwhite p-t-60">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-9 p-b-75">
                    <div class="p-r-50 p-r-0-lg">
                        <!-- item blog -->
                        @foreach($articles as $article)
                        <div class="item-blog p-b-80">
                            <a href="{{ route('home.article.detail', ['slug' => $article->slug , 'id' => $article->id]) }}" class="item-blog-img pos-relative dis-block hov-img-zoom">
                                <img  width="300" height="350" src="{{ asset($article->image) }}" alt="IMG-BLOG">


                            </a>

                            <div class="item-blog-txt p-t-33">
                                <h4 class="p-b-11">
                                    <a href="{{ route('home.article.detail', ['slug' => $article->slug , 'id' => $article->id]) }}" class="m-text24">
                                        {{ $article->title }}
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

                                <p class="p-b-12">
                                    {!! $article->summary !!}                                </p>

                                <a href="{{ route('home.article.detail', ['slug' => $article->slug , 'id' => $article->id]) }}" class="s-text20">
                                    Continue Reading
                                    <i class="fa fa-long-arrow-right m-l-8" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>

                        @endforeach
                    </div>

{{--                    <!-- Pagination -->--}}
{{--                    <div class="pagination flex-m flex-w p-r-50">--}}
{{--                        <a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>--}}
{{--                        <a href="#" class="item-pagination flex-c-m trans-0-4">2</a>--}}
{{--                    </div>--}}
                </div>

                <div class="col-md-4 col-lg-3 p-b-75">
                    <div class="rightbar">
{{--                        <!-- Search -->--}}
{{--                        <div class="pos-relative bo11 of-hidden">--}}
{{--                            <input class="s-text7 size16 p-l-23 p-r-50" type="text" name="search-product" placeholder="Search">--}}

{{--                            <button class="flex-c-m size5 ab-r-m color1 color0-hov trans-0-4">--}}
{{--                                <i class="fs-13 fa fa-search" aria-hidden="true"></i>--}}
{{--                            </button>--}}
{{--                        </div>--}}

                        <!-- Categories -->

                        <h4 class="m-text23 p-t-56 p-b-34">
                            Categories
                        </h4>
                        @foreach($categories as $cate)
                            @if($cate->parent_id == 0)
                        <ul>
                            <li class="p-t-6 p-b-8 bo6">
                                <a href="{{route('home.category',[ 'slug' => $cate->slug])}}" class="s-text13 p-t-5 p-b-5">
                                    {{$cate->name}}
                                </a>
                            </li>

                        </ul>
                        @endif
                    @endforeach


                        <!-- Tags -->
                        <h4 class="m-text23 p-t-50 p-b-25">
                            Tags
                        </h4>

                        <div class="wrap-tags flex-w">
                            @foreach($tags as $tag)
                            <a href="/danh-muc/{{ $tag->slug }}" class="tag-item">
                                {{ $tag->name}}
                            </a>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>




@endsection
