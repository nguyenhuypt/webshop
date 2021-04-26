@extends('frontend.layouts.main')

@section('content')

    <style>
        .bb1{
            border: none;
        }
    </style>
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
                                        <input  class="filter-price" value="tat-ca" type="radio" name="availability"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Tất cả</a>
                                </li>

                                <li>
                                    <label class="cheker">
                                        <input  class="filter-price" value="" data-text="" type="radio" name="availability"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13"></a>
                                </li>

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
                                        <input class="filter-price" value="tat-ca" type="radio" name="availability"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Tất cả</a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input  class="filter-price" type="radio" name="price" value="1-2000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Dưới 2 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input  class="filter-price" type="radio" name="price" value="2000000-4000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Từ 2 - 4 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input  class="filter-price" type="radio" name="price" value="4000000-7000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Từ 4 - 7 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input  class="filter-price" type="radio" name="price" value="7000000-13000000"/>
                                        <span></span>
                                    </label>
                                    <a href="#" class="s-text13">Từ 7 - 13 triệu
                                    </a>
                                </li>
                                <li>
                                    <label class="cheker">
                                        <input  class="filter-price" type="radio" name="price" value="13000000-"/>
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
                            <h3></h3>


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
                                <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                                    <a href="{{ route('home.product', ['slug' => $product->slug , 'id' => $product->id]) }}" title="{{ $product->name }}" >
                                        <img width="200" height="320" src="{{asset($product->image)}}" alt="{{$product->name}}">

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
                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection




