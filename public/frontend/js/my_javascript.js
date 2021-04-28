//----------Them san pham vao gio hang----------------///
$('#sizeProduct').change(function(){
    $('#errSizeProduct').css('display','none');
})
function addToCart(name) {
    var data = {};
    var idProduct = $('#idProduct').val();
    var sizeProduct = $('#sizeProduct').val();
    var quantity = $('#quantity').val();
    if (!sizeProduct || sizeProduct == 0) {
        $('#errSizeProduct').css('display', 'block');
        return false;
    }
    data = {
        id: idProduct,
        sizeProduct: sizeProduct,
        quantity: quantity
    };
    var totalProduct = $('#totalProduct').attr('data-notify');
    var totalProductM = $('#totalProductM').attr('data-notify');
    var tt = Number(totalProduct);
    var tc = Number(quantity);
    var ttM = Number(totalProductM);
    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/them-sp-vao-gio-hang',
        type: 'POST',
        data: data, // dữ liệu truyền sang nếu có
        dataType: "json", // kiểu dữ liệu trả về
        success: function (response) { // success : kết quả trả về sau khi gửi request ajax
            if (response.msg != 'undefined' && response.msg == 'ok') {
                swal(name, "đã được thêm vào giỏ hàng !", "success");
                tt = tt + tc;
                $('#totalProduct').attr('data-notify', tt);
                ttM = ttM + tc;
                $('#totalProductM').attr('data-notify', ttM);

            }
        },
        error: function (e) { // lỗi nếu có
            console.log(e.message);
        }
    });

    return false;
}
function addToCartP() {
    var id = $('#id_productP').val();
    console.log(id);
    var nameProduct = $('#tet').text();
    var sizeProduct = $('#sizeProductP').val();
    var quantity = $('#quantityP').val();
    if (!sizeProduct || sizeProduct == 0) {
        $('#errSizeProduct').css('display', 'block');
        return false;
    }

    data = {
        id: id,
        sizeProduct: sizeProduct,
        quantity: quantity
    };
    var totalProduct = $('#totalProduct').attr('data-notify');
    var tt = Number(totalProduct);
    var tc = Number(quantity);
    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: '/them-sp-vao-gio-hang',
        type: 'POST',
        data: data, // dữ liệu truyền sang nếu có
        dataType: "json", // kiểu dữ liệu trả về
        success: function (response) { // success : kết quả trả về sau khi gửi request ajax
            if (response.msg != 'undefined' && response.msg == 'ok') {
                swal(nameProduct, "\n" + "has been added to the cart !", "success");
                tt = tt + tc;
                $('#totalProduct').attr('data-notify', tt);

            }
        },
        error: function (e) { // lỗi nếu có
            console.log(e.message);
        }
    });

    return false;

}
