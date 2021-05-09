@extends('frontend.layouts.main')

@section('content')
    @if(session('cart'))
        @php
            $cart = session('cart');
            $products = $cart->products;
            $totalPrice = $cart->totalPrice;
            $totalQty = $cart->totalQty;
            $discount = $cart->discount;
            $coupon = $cart->coupon;
            $payment = $totalPrice - $discount;
        @endphp
    <!-- Cart -->
<style>

</style>
    <section class="cart bgwhite p-t-70 p-b-100" >
        <div class="container" >
            <!-- Cart item -->
            <div class="container-table-cart pos-relative" id="my-cart">
                <div class="wrap-table-shopping-cart bgwhite" >
                    <table class="table-shopping-cart" >
                        <tr class="table-head">
                            <th class="column-1"></th>
                            <th class="column-2">Product</th>
                            <th class="column-3">Price</th>
                            <th class="column-4 " style="width: 120px">Quantity</th>
                            <th class="column-5" style="width: 320px;text-align: center">Total</th>
                            <th class="cart-delete text-center" >&nbsp;</th>
                        </tr>
                        @foreach($products as $product)
                        <tr class="table-row" data-id-product="{{$product['item']->id}}">
                            <td class="column-1">
                                <div class="cart-img-product b-rad-4 o-f-hidden">
                                    <img src="{{asset($product['item']->image)}}" alt="IMG-PRODUCT">
                                </div>
                            </td>
                            <td class="column-2">{{$product['item']->name}}</td>
                            <td class="column-3">{{ number_format($product['item']->price ,0,",",".") }} đ</td>
                            <td class="column-4" style="width: 17px">
                                <div class=" w-size8.5">
                                    <input  style="width: 60px;padding: 5px" min="1" class="cart-plus-minus item-qty" data-id="{{ $product['item']->id }}" data-num="{{ $product['qty'] }}" type="number" name="qty" value="{{ $product['qty'] }}">
                                </div>
                            </td>
                            <td class="column-5" style="width: 320px;text-align: center">{{ number_format($product['qty'] * $product['item']->price ,0,",",".") }}</td>
                            <td class="cart-delete text-center" >
                                <a data-id="{{ $product['item']->id }}" href="javascript:void(0)" class="cart_quantity_delete remove-to-cart btn btn-flat btn-danger" title="Xóa sản phẩm"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        @endforeach

                    </table>
                </div>
            </div>

            <div class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
                <form action="{{ route('home.cart.check-coupon') }}" method="get">
                <div class="flex-w flex-m w-full-sm">
                    <div class="size11 bo4 m-r-10">
                        <input class="sizefull s-text7 p-l-22 p-r-22" type="text" value="{{ $coupon }}" name="coupon_code" placeholder="Nhập mã khuyến mại">
                    </div>

                    <div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
                        <!-- Button -->
                        <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" type="submit">
                            Apply coupon
                        </button>
                    </div>
                </div>
                </form>
                @if($errors->any())
                    @foreach ($errors->all() as $error)
                        <p style="text-align: right;color: red;">{{ $error }}</p>
                    @endforeach
                @endif
                <div class="size10 trans-0-4 m-t-10 m-b-10">
                    <!-- Button -->
                    <a class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" href="/">
                        Update Cart
                    </a>
                </div>
            </div>

            <!-- Total -->
            <div class="bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
                <h5 class="m-text20 p-b-24">
                    Cart Totals
                </h5>

                <!--  -->
                <div class="flex-w flex-sb-m p-b-12">
					<span class="s-text18 w-size19 w-full-sm">
						Subtotal:
					</span>

                    <span class="m-text21 w-size20 w-full-sm">
						{{ number_format($totalPrice ,0,",",".") }} đ
					</span>
                </div>

                <!--  -->
                <div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="s-text18 w-size19 w-full-sm">
						Discount:
					</span>
                    <span class="m-text21 w-size20 w-full-sm">
						- {{ number_format($discount ,0,",",".") }} đ
					</span>

                </div>

                <!--  -->
                <div class="flex-w flex-sb-m p-t-26 p-b-30">
					<span class="m-text22 w-size19 w-full-sm">
						Total:
					</span>

                    <span class="m-text21 w-size20 w-full-sm">
						{{ number_format($payment ,0,",",".") }} đ
					</span>
                </div>

                <div class="size15 trans-0-4">
                    <!-- Button -->
                    <a href="{{route('home.cart.checkout')}}" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
                        Proceed to Checkout
                    </a>
                </div>
            </div>
        </div>
    </section>
    @else
        <style>
            .buyother {
                display: block;
                overflow: hidden;
                background: #fff;
                line-height: 40px;
                text-align: center;
                margin: 15px auto;
                width: 300px;
                font-size: 14px;
                color: #288ad6;
                font-weight: 600;
                text-transform: uppercase;
                border: 1px solid #288ad6;
                border-radius: 4px;
            }
        </style>
        <div style="height: 300px;padding: 40px 300px">
            <h3 class="text-center">Bạn chưa có sản phẩm nào trong giỏ hàng</h3>
            <a href="/" class="buyother"><i class="fa fa-chevron-left"></i> Về trang chủ</a>
        </div>

    @endif



@endsection
@section('myJs')
    <script type="text/javascript">
        $(function () {
            // xóa sản phẩm khỏi giỏ hàng
            $(document).on("click", '.remove-to-cart', function () {
                var result = confirm("Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng ?");
                if (result) {
                    var product_id = $(this).attr('data-id');
                    $.ajax({
                        url: '/dat-hang/xoa-sp-gio-hang/'+product_id,
                        type: 'get',
                        data: {
                            id : product_id
                        }, // dữ liệu truyền sang nếu có
                        dataType: "HTML", // kiểu dữ liệu trả về
                        success: function (response) {
                            $('#my-cart').html(response);
                        },
                        error: function (e) { // lỗi nếu có
                            console.log(e.message);
                        }
                    });
                }
            });

            // cập nhật số lượng giỏ hàng
            //$('.item-qty').change(function () {
            $(document).on("change", '.item-qty', function () {
                var product_id = $(this).attr('data-id');
                var before_qty = $(this).attr('data-num');
                var qty = $(this).val();

                if (qty == 0) {
                    alert('Nhập số lượng phải lớn hơn 0');
                    $(this).val(before_qty);
                    return false;
                }

                $.ajax({
                    url: '/dat-hang/cap-nhat-gio-hang',
                    type: 'get',
                    data: {
                        id : product_id,
                        qty : qty
                    }, // dữ liệu truyền sang nếu có
                    dataType: "json", // kiểu dữ liệu trả về
                    success: function (response) {
                        console.log(response);
                        // success
                        if (response.status == true) {
                            $('#my-cart').html(response.data);
                        }
                    },
                    error: function (e) { // lỗi nếu có
                        console.log(e.message);
                    }
                });
            });
        })
    </script>
@endsection


