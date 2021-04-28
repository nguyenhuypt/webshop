<?php

namespace App\Http\Controllers;

use App\cart;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(){
        return view('frontend.cart');
    }

    // Thêm sản phẩm vào giỏ hàng
    public function addToCart(Request $request)
    {


        $id = $request->id;
        $sizeProdcut = $request->sizeProduct;
        $quantity = $request->quantity;

        $product = Product::find($id);


        if (!$product) {
            return $this->notfound();
        }
        // Kiểm tra tồn tại giỏ hàng cũ
        $_cart = session('cart') ? session('cart') : '';

        // Khởi tạo giỏ hàng
        $cart = new Cart($_cart);
        // Thêm sản phẩm vào giỏ
        $cart->add($product,$quantity);
        // Lưu thông tin vào session
        $request->session()->put('cart', $cart);

        return response()->json(['msg' => 'ok'], 200);
    }

    public function checkout()
    {
        return view('frontend.checkout');
    }
}
