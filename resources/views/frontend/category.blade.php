@extends('frontend.layouts.main')

@section('content')

    <style>
        .bb1{
            border: none;
        }
    </style>
    <div class="bread-crumb bgwhite flex-w p-l-167 p-r-15 p-t-30 p-l-15-sm">
        <a href="/" class="s-text30">
            Home
            <i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
        </a>

        <a href="{{ route('home.category',[ 'slug' => $category->slug]) }}" class="s-text25" style="text-transform: inherit;">
            {{$category->name}}

        </a>

        <span class="s-text17">

		</span>
    </div>
    <!-- Content page -->
    <section class="bgwhite p-t-55 p-b-65">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
                    <div class="leftbar p-r-20 p-r-0-sm">
                        <div class="product-single-sidebar">
                            <h4 class="m-text14 p-b-32">
                                Thương Hiệu
                            </h4>
                            <ul>
                                <li>
                                    <label class="cheker">
                                        <input  class="filter_category" data-text="tat-ca" value="checked" type="radio" name="category_id"/>
                                        <span></span>
                                    </label>
                                    <a href="javascript:void(0)" class="s-text13">Tất cả</a>
                                </li>
                                @foreach($branchs as $child)
                                <li>
                                    <label class="cheker">
                                        <input  class="filter-price" value="{{ $child->id }}" data-text="{{ $child->slug }}" type="radio" name="category_id"/>
                                        <span></span>
                                    </label>
                                    <a href="{{ route('home.category', ['slug' => $child->slug]) }}" class="s-text13">{{ $child->name }}</a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                        <!--  -->
                        <hr>

                        <div class="product-single-sidebar">
                            <h4 class="m-text14 p-b-32">
                                Mức Giá
                            </h4>
                            <ul>
                                <li>
                                    <label class="cheker">
                                        <input {{ ($filter_price == '' ? 'checked' : '') }} class="filter-price" value="tat-ca" type="radio" name="availability"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Tất cả</a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input {{ ($filter_price == '1-2000000' ? 'checked' : '') }} class="filter-price" type="radio" name="price" value="1-2000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Dưới 2 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input {{ ($filter_price == '2000000-4000000' ? 'checked' : '') }} class="filter-price" type="radio" name="price" value="2000000-4000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Từ 2 - 4 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input {{ ($filter_price == '4000000-7000000' ? 'checked' : '') }} class="filter-price" type="radio" name="price" value="4000000-7000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Từ 4 - 7 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input {{ ($filter_price == '7000000-13000000' ? 'checked' : '') }} class="filter-price" type="radio" name="price" value="7000000-13000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Từ 7 - 13 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input {{ ($filter_price == '13000000-' ? 'checked' : '') }} class="filter-price" type="radio" name="price" value="13000000-"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Trên 13 triệu
                                    </a>
                                </li>
                            </ul>
                        </div>




                    </div>
                </div>

                <div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
                    <!--  -->
                    <div class="flex-sb-m flex-w p-b-35 " >
                        <div class="flex-w">
                            <h5><b>{{$category->name}}</b></h5>


                        </div>


                        <div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10" style="border: none;">
                            <select class="selection-2" name="sorting" style="border: none;">
                                <option>Sắp xếp</option>
                                <option  value="noi-bat">Nổi bật nhất</option>
                                <option  value="ban-chay-nhat">Bán chạy nhất</option>
                                <option  value="gia-cao-den-thap">Giá cao đến thấp</option>
                                <option  value="gia-thap-den-cao">Giá thấp đến cao</option>


                            </select>
                        </div>
                    </div>

                    <!-- Product -->
                    <div class="row">
                        @foreach($products as $product)
                        <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                            <!-- Block2 -->

                            <div class="block2">
                                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                                    <a href="{{ route('home.product', ['slug' => $product->slug , 'id' => $product->id]) }}" title="{{ $product->name }}" >
                                        <img width="180" height="320" src="{{asset($product->image)}}" alt="{{$product->name}}">

                                    </a>
                                </div>

                                <div class="block2-txt p-t-20">
                                    <a href="{{ route('home.product', ['slug' => $product->slug , 'id' => $product->id]) }}" title="{{ $product->name }}" class="block2-name dis-block s-text3 p-b-5">
                                        {{ $product->name }}
                                    </a>

                                    <span class="block2-oldprice m-text7 p-r-5">
										{{ number_format($product->sale, 0,",",".") }}đ
									</span>
                                    <br>
                                    <span class="block2-newprice m-text8 p-r-5">
										{{ number_format($product->price,0,",",".") }}đ
									</span>
                                </div>
                            </div>

                        </div>
                        @endforeach


                    </div>

                    <!-- Pagination -->
                    <div class="pagination flex-m flex-w p-t-26">
                        {{ $products->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection

@section('myJS')


@endsection




