<?php

namespace App\Http\Controllers;

use App\Banner;
use App\cart;
use App\Coupon;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CartController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(){
        $banners = Banner::where([
            ['is_active', '=', '1'],
            ['type', '=', '1'],
        ])->orderBy('position', 'ASC')
            ->orderBy('id', 'DESC')->get();
        return view('frontend.cart',[
            'banners' => $banners
        ]);
    }

    // Thêm sản phẩm vào giỏ hàng
    public function addToCart(Request $request)
    {


        $id = $request->id;

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





    // Xóa sp khỏi giỏ hàng
    public function removeToCart(Request $request, $id)
    {

        // Kiểm tra tồn tại giỏ hàng cũ
        $_cart = session('cart') ? session('cart') : '';
        // Khởi tạo giỏ hàng
        $cart = new Cart($_cart);
        $cart->remove($id);

        if (count($cart->products) > 0) {
            // Lưu thông tin vào session
            $request->session()->put('cart', $cart);
        } else {
            $request->session()->forget('cart');
        }

        return view('frontend.cart');
    }

    // Cập nhật lại giỏ hàng
    public function updateToCart(Request $request)
    {
        // check nhập số lượng không đúng định dạng
        $validator = Validator::make($request->all(), [
            'qty' => 'required|numeric|min:1',
        ]);

        // check số lượng lỗi
        if ($validator->fails()) {
            return response()->json([
                'status'  => false ,
                'data' => $validator
            ]);
        }

        $product_id = $request->input('id');
        $qty = $request->input('qty');

        // Lấy giỏ hàng hiện tại thông qua session
        $_cart = session('cart');
        $cart = new Cart($_cart);
        $cart->store($product_id, $qty);

        if (count($cart->products) > 0) {
            // Lưu thông tin vào session
            $request->session()->put('cart', $cart);
        } else {
            $request->session()->forget('cart');
        }

        return response()->json([
            'status'  => true,
            'data' => view('frontend.cart')->render()
        ]);

    }

    // Check mã giảm giá
    public function checkCoupon(Request $request)
    {
        $coupon = Coupon::where('code', $request->coupon_code)->first();

        if (!$coupon) {
            return redirect()->back()->withErrors(['errorCoupon' => 'Mã giảm giá không tồn tại']);
        }


        $_cart = session('cart');
        $discount = 0; // số tiền được giảm giá , default = 0

        // check default tính theo giá
        if ($coupon->value) {
            $discount = $coupon->value;
        } else {
            if ($coupon->percent) {
                // tính theo %
                $discount = ($coupon->percent * $_cart->totalPrice) / 100;
            }
        }

        // Get lại giỏ hàng
        $cart = new Cart($_cart);
        $cart->discount = $discount; // set số tiền được giảm
        $cart->coupon = $coupon->code;

        // Lưu thông tin vào session
        $request->session()->put('cart', $cart);

        return redirect()->back();
    }


    //thanh toan
    public function checkout()
    {
        return view('frontend.checkout');
    }

    // Hủy đơn hàng
    public function destroy(Request $request)
    {
        // remove session
        $request->session()->forget('cart');

        return redirect('/');
    }
}

