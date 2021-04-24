<?php

namespace App\Http\Controllers;

use App\Article;
use App\Banner;
use App\Brand;
use App\Category;
use App\Contact;
use App\Product;
use App\Setting;
use Illuminate\Http\Request;
use PhpParser\Node\Expr\New_;
use Session;

class HomeController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $banners = Banner::where([
            ['is_active', '=', '1'],
            ['type', '=', '1'],
        ])->orderBy('position', 'ASC')
            ->orderBy('id', 'DESC')->get();

        $articles = Article::where('is_active', 1)->orderBy('id', 'DESC')->paginate(3);

        $banner2 = Banner::where([
            ['is_active', '=', '1'],
            ['type', '=', '2'],
        ])->orderBy('position', 'ASC')
            ->orderBy('id', 'DESC')->get();

        $categories = $this->categories;
        $list = []; // chứa danh sách sản phẩm  theo thể loại
        foreach ($categories as $key => $category) {
            if ($category->parent_id == 0) { // check danh mục cha
                $ids = [$category->id]; // $ids = array($category->id);

                foreach ($categories as $child) {
                    if ($child->parent_id == $category->id) {
                        $ids[] = $child->id; // thêm phần tử vào mảng
                    }
                }

                $list[$key]['category'] = $category;

                $list[$key]['products'] = Product::where(['is_active' => 1])
                    ->whereIn('category_id', $ids)
                    ->limit(12)
                    ->orderBy('id','desc')
                    ->orderBy('position','ASC')
                    ->get();
            }
        }

        $products  = Product::where(['is_active'=>1])->limit(12)
            ->orderBy('position','ASC')
            ->orderBy('id','desc')

            ->get();

        return view('frontend.home', [
            'banners' => $banners,
            'articles' => $articles,
            'banner2' => $banner2,
            'list' => $list,
            'newProducts' => $products


        ]);
    }
    public function product($slug)
    {
        //get chi tiet sp
        $product = Product::where(['is_active' => 1,'slug' => $slug])->first();


        $sameProducts  = Product::where([
            ['is_active', '=', 1],
            ['id','<>',$product->id],
            ['category_id','=',$product->category_id]
        ])->orderBy('id','desc')
            ->orderBy('position','ASC')
            ->limit(4)
            ->get();
        return view('frontend.detailProduct',[
            'product' => $product,
            'sameProducts' => $sameProducts
        ]);
    }




    public function contact()
    {
        return view('frontend.contact');
    }
    public function about()
    {
        $settings = Setting::where('id', 1)->get();
        return view('frontend.about', [
            'settings' => $settings
        ]);
    }



    public function postContact(Request $request)
    {
        //validate
        $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email'
        ], [
            'name.required' => 'Bạn cần nhập vào tên',
            'email.required' => 'Bạn cần nhập vào địa chỉ email',
            'email.email' => 'Địa chỉ email không hợp lệ'
        ]);

        $contact = new Contact();
        $contact->name = $request->input('name');
        $contact->phone = $request->input('phone');
        $contact->email = $request->input('email');
        $contact->content = $request->input('content');
        $contact->save();
        return redirect()->route('home.contact')->with('msg', 'Bạn đã gửi tin nhắn thành công');
    }


}
