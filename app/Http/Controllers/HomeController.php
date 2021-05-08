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
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Expr\New_;
use Session;

class HomeController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function test ()
    {
        dd(12131321231321231);
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
//                dd($ids);
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
            'newProducts' => $products,


        ]);
    }

    public function getProductsByCategory(Request $request,$slug)
    {
        $filter_brands = $request->query('thuong-hieu');
        $filter_price = $request->query('gia');

        $branch_ids = [];
        if ($filter_brands) {
            $arr_filter_brands = explode(',', $filter_brands);
            $arr_brands = Brand::whereIn('slug' , $arr_filter_brands)->get();

            foreach ($arr_brands as $item) {
                $branch_ids[] = $item->id;
            }
        }

        //thuong hieu
        $branchs = Brand::all();
        // step 1 : lấy chi tiết thể loại
        $cate = Category::where(['slug' => $slug])->first();

        if ($cate) {

            $categories = $this->categories;
            // step 1.1 Check danh mục cha -> lấy toàn bộ danh mục con để where In
            $ids = [];
            foreach ($categories as $key => $category) {
                if ($category->id == $cate->id) {
                    $ids[] = $cate->id;
                    foreach ($categories as $child) {
                        if ($child->parent_id == $cate->id) {
                            $ids[] = $child->id; // thêm phần tử vào mảng
                        }
                    }
                }
            }
////dd($ids);
            // step 2 : lấy list sản phẩm theo thể loại
            $query = DB::table('products')->select('*')
                ->whereIn('category_id', $ids)
                ->where('is_active', '=', 1);

            //loc theo thuong hieu
            if ($branch_ids) {
                $query->whereIn('brand_id', $branch_ids);
            }

            //loc theo gia
            if ($filter_price) {
                $arr_price = explode('-', $filter_price);
                if ($arr_price) {
                    $min_price = (int)$arr_price[0];
                    $max_price = (int)$arr_price[1];

                    if ($min_price > 0) {
                        $query->where('sale', '>=' , $min_price);
                    }

                    if ($max_price > 0) {
                        $query->where('sale', '<=' , $max_price);
                    }
                }
            }

            $list_products = $query->paginate(12);;
            return view('frontend.category', [
                'category' => $cate,
                'products' => $list_products,
                'branchs' => $branchs,
                'filter_price' => $filter_price ? $filter_price : '',
                'arr_filter_brands' => json_encode($branch_ids)
            ]);
        } else {
            return $this->notfound();
        }
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
            ->limit(10)
            ->get();
        return view('frontend.detailProduct',[
            'product' => $product,
            'sameProducts' => $sameProducts
        ]);
    }

    public function getListArticles()
    {
        $banners = Banner::where([
            ['is_active', '=', '1'],
            ['type', '=', '1'],
        ])->orderBy('position', 'ASC')
            ->orderBy('id', 'DESC')->get();
        $articles = Article::latest()->paginate(15);
        $tags = Category::where([
            ['parent_id' , '<>', 0],
            ['is_active' , '=', 1]
        ])->get();
        return view('frontend.list-articles',[
            'banners' => $banners,
            'articles' => $articles,
            'tags' => $tags

        ]);
    }

    public function getArticle($slug , $id)
    {
        $article = Article::find($id);

        if (!$article) {
            return $this->notfound();
        }
        $tags = Category::where([
            ['parent_id' , '<>', 0],
            ['is_active' , '=', 1]
        ])->get();
        return view('frontend.article',[
            'article' => $article,
            'tags' => $tags
        ]);
    }

    public function search(Request $request)
    {
        $banners = Banner::where([
            ['is_active', '=', '1'],
            ['type', '=', '1'],
        ])->orderBy('position', 'ASC')
            ->orderBy('id', 'DESC')->get();
        // b1. Lấy từ khóa tìm kiếm
        $keyword = $request->input('tu-khoa');

        $slug = str_slug($keyword);

        //$sql = "SELECT * FROM products WHERE is_active = 1 AND slug like '%$keyword%'";

        $products = Product::where([
            ['slug', 'like', '%' . $slug . '%'],
            ['is_active', '=', 1]
        ])->paginate(20);

        $totalResult = $products->total(); // số lượng kết quả tìm kiếm

        return view('frontend.search', [
            'banners' => $banners,
            'products' => $products,
            'totalResult' => $totalResult,
            'keyword' => $keyword ? $keyword : ''
        ]);
    }



    // Chi tiet san pham
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
