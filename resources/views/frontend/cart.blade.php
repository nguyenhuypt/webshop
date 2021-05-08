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
    <section class="cart bgwhite p-t-70 p-b-100">
        <div class="container">
            <!-- Cart item -->
            <div class="container-table-cart pos-relative">
                <div class="wrap-table-shopping-cart bgwhite">
                    <table class="table-shopping-cart">
                        <tr class="table-head">
                            <th class="column-1"></th>
                            <th class="column-2">Product</th>
                            <th class="column-3">Price</th>
                            <th class="column-4 " style="width: 120px">Quantity</th>
                            <th class="column-5" style="width: 320px;text-align: center">Total</th>
                            <th class="cart-delete text-center">&nbsp;</th>
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
                                    <input  style="width: 60px;padding: 5px" type="number" nname="num-product1" id="product{{$product['item']->id}}" data-num-product="{{ $product['qty'] }}" value="{{ $product['qty'] }}" min="1">
                                </div>
                            </td>
                            <td class="column-5" style="width: 320px;text-align: center">{{ number_format($product['qty'] * $product['item']->price ,0,",",".") }}</td>
                            <td> <button style="padding-right: 25px;color: red" title="Delete product" onclick="removeProductCart('{{$product['item']->id}}')">x</button></td>

                        </tr>
                        @endforeach

                    </table>
                </div>
            </div>

            <div class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
                <div class="flex-w flex-m w-full-sm">
                    <div class="size11 bo4 m-r-10">
                        <input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="coupon-code" placeholder="Coupon Code">
                    </div>

                    <div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
                        <!-- Button -->
                        <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
                            Apply coupon
                        </button>
                    </div>
                </div>

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
						$39.00
					</span>
                </div>

                <!--  -->
                <div class="flex-w flex-sb bo10 p-t-15 p-b-20">
					<span class="s-text18 w-size19 w-full-sm">
						Discount:
					</span>
                    <span class="m-text21 w-size20 w-full-sm">
						$39.00
					</span>

                </div>

                <!--  -->
                <div class="flex-w flex-sb-m p-t-26 p-b-30">
					<span class="m-text22 w-size19 w-full-sm">
						Total:
					</span>

                    <span class="m-text21 w-size20 w-full-sm">
						$39.00
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

    @endif

@endsection

