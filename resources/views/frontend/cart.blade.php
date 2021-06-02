@extends('frontend.layouts.main')

@section('content')
@include('frontend.components.minicart')



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


