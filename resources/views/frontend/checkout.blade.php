@extends('frontend.layouts.main')

@section('content')
    <section style="background: #E6E6E6">
        <div class="hero-wrap hero-bread" style="background-image: url('frontend/images/bg_1.jpg');">
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs"><span class="mr-2"><a href="/">Trang chủ </a></span> <span>Phương thức thanh toán</span></p>

                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 ftco-animate">
                        <form action="#" class="billing-form">
                            <h3 class="mb-4 billing-heading">Chi tiết thanh toán</h3>
                            <div class="row align-items-end">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="postcodezip">Họ và tên</label>
                                        <input type="text" class="form-control" placeholder="">
                                    </div>
                                </div>

                                <div class="w-100"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label for="postcodezip">Điện thoại</label>
                                            <input type="tel" class="form-control" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="postcodezip">Email</label>
                                        <input type="email" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <div class="w-100"></div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="streetaddress">Địa chỉ nhận hàng</label>
                                        <input type="text" class="form-control" placeholder="Số nhà và tên đường">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="streetaddress">Ghi chú</label>
                                        <textarea type="text" class="form-control" placeholder=""></textarea>
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
                        </form><!-- END -->
                    </div>
                    <div class="col-xl-5">
                        <div class="row mt-5 pt-3">
                            <div class="col-md-12 d-flex mb-5">
                                <div class="cart-detail cart-total p-3 p-md-4">
                                    <h3 class="billing-heading mb-4">Tổng giỏ hàng</h3>
                                    <p class="d-flex">
                                    <p class="d-flex">
                                        <span>Phụ tính</span>
                                        <span>300.000 đ</span>
                                    </p>
                                    <p class="d-flex">
                                        <span>Giảm giá</span>
                                        <span>0 đ</span>
                                    </p>
                                    <hr>
                                    <p class="d-flex total-price">
                                        <span>Tổng cộng</span>
                                        <span>300.000 đ</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="cart-detail p-3 p-md-3">
                                    <h3 class="billing-heading mb-4">Phương thức thanh toán</h3>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input type="radio" name="optradio" class="mr-2"> Thanh toán trực tiếp</label>
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

                                    <p><a href="#"class="btn btn-primary py-3 px-4">Đặt hàng</a>
                                        <a href="#"class="btn btn-danger py-3 px-4">Hủy đặt hàng</a>
                                    </p>

                                </div>

                            </div>
                        </div>
                    </div> <!-- .col-md-8 -->
                </div>
            </div>
        </section> <!-- .section -->
    </section>
@endsection
