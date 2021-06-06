<?php

namespace App\Http\Controllers;

use App\Banner;
use Illuminate\Http\Request;
use App\Category;
use App\Setting;


class GeneralController extends Controller
{
    protected $categories;

    public function __construct()
    {
        // lấy dữ danh mục
        $categories = Category::where([
            'is_active' => 1
        ])->orderBy('position', 'ASC')->get();
        $this->categories = $categories;
// 2. Lấy dữ liệu - Banner
        $banners = Banner::where('is_active', 1)->orderBy('position', 'desc')->get();
        // Danh mục
//        $menu = Category::where('is_active',1)->orderBy('position','ASC')
//            ->orderBy('id','DESC')->get();
//
//        $menu_brand = Brand::where('is_active',1)->orderBy('position','ASC')
//            ->orderBy('id','DESC')->get();
//
//        // Cấu hình
        $setting = Setting::first();

        // chia sẻ dữ liệu qua nhiều view khác nhau
        view()->share([
            'categories' => $categories,
//            'menu_brand' => $menu_brand,
//            'menu' => $menu,
            'setting' => $setting,
            'banners' => $banners,
        ]);
    }

    public function getCart()
    {
        $cart = Cart::content();

        return $cart;
    }
}
