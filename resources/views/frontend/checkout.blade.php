@extends('frontend.layouts.main')

@section('content')
    @php
        $cart = session('cart');
        $products = $cart->products;
        $totalPrice = $cart->totalPrice;
        $totalQty = $cart->totalQty;
        $discount = $cart->discount;
        $coupon = $cart->coupon;
        $payment = $totalPrice - $discount;
    @endphp
    <section style="background: #E6E6E6">
        <br>
        <section class="ftco-section">

            <form action="{{route('home.cart.checkout')}}" class="billing-form" method="post">
                @csrf
            <div class="container">
                @if($errors->any())
                    <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-warning"></i> Lỗi!</h4>
                        @foreach($errors->all() as $error)
                            <p>{{ $error }}</p>
                        @endforeach
                    </div>
                @endif
                <div class="row justify-content-center">
                    <div class="col-xl-7 ftco-animate">

                            <h3 class="mb-4 billing-heading">Chi tiết thanh toán</h3>
                            <hr>
                            <div class="row align-items-end">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="postcodezip">Họ và tên</label>
                                        <input type="text" class="form-control "  name="fullname" placeholder="">
                                    </div>
                                    @if ($errors->has('fullname'))
                                        <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('fullname') }}</span>
                                    @endif

                                </div>

                                <div class="w-100"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label for="postcodezip">Điện thoại</label>
                                            <input type="tel" class="  form-control" name="phone" placeholder="">
                                        </div>
                                        @if ($errors->has('phone'))
                                            <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('phone') }}</span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="postcodezip">Email</label>
                                        <input type="email" class="form-control " name="email" placeholder="">
                                    </div>
                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                <div class="w-100"></div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="streetaddress">Địa chỉ nhận hàng</label>
                                        <input type="text" class="form-control " name="address" placeholder="">
                                    </div>
                                    @if ($errors->has('address'))
                                        <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('address') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="streetaddress">Ghi chú</label>
                                        <textarea type="text" class="form-control"  placeholder=""></textarea>
                                    </div>
                                </div>



                                <div class="col-md-12">
                                    <div class="form-group mt-4">
                                        <div class="radio">
                                            <label class="mr-3"><input type="checkbox" name="optradio"> Tôi đã đọc và chấp nhận chính sách mua hàng.</label>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        <!-- END -->
                    </div>
                    <div class="col-xl-5">
                        <div class="row mt-5 pt-3">
                            <div class="col-md-12 d-flex mb-5">
                                <div class="cart-detail cart-total p-3 p-md-4">
                                    <h3 class="billing-heading mb-4">Tổng giỏ hàng</h3>
                                    <p class="d-flex">
                                    <p class="d-flex">
                                        <span>Phụ tính:</span>
                                        <span>&nbsp;{{ number_format($totalPrice ,0,",",".") }} đ</span>
                                    </p>
                                    <p class="d-flex">
                                        <span>Giảm giá:</span>
                                        <span>&nbsp;- {{ number_format($discount ,0,",",".") }} đ</span>
                                    </p>
                                    <hr>
                                    <p class="d-flex total-price">
                                        <span>Tổng cộng:</span>
                                        <span>&nbsp;{{ number_format($payment ,0,",",".") }} đ</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="cart-detail p-3 p-md-3">
                                    <h3 class="billing-heading mb-4">Phương thức thanh toán</h3>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input checked type="radio" name="optradio" class="mr-2"> Thanh toán trực tiếp</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input type="radio" name="optradio" class="mr-2"> Thanh toán bằng phương thức chuyển khoản</label>
                                            </div>
                                        </div>
                                    </div>

                                    <p>
                                        <a href="{{route('home.cart.destroy')}}" class="btn btn-danger py-3 px-4">Hủy đặt hàng</a>
                                        <button class="btn btn-primary py-3 px-4 procedtocheckout" type="submit" >Đặt hàng</button>

                                    </p>

                                </div>

                            </div>
                        </div>
                    </div> <!-- .col-md-8 -->
                </div>
            </div>
            </form>
        </section> <!-- .section -->
    </section>
@endsection
