<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $categories =  Category::latest()->paginate(20);

        return view('backend.category.index',[
            'data' => $categories
        ]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = Category::all();

        return view('backend.category.create',[
            'data' => $data,

        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ],[
            'name.required' => 'Bạn cần phải nhập vào tên danh mục.',
            'image.image' => 'File ảnh phải có dạng jpeg,png,jpg,gif,svg',
        ]);

        $category = new Category();

        $category->name = $request->input('name'); // Bạn cần phải nhập
        $category->slug = Str::slug($request->input('name')); // ban-can-phai-nhap

        if($request->hasFile('image')){
            $file = $request->file('image');
            $filename = time().'_'.$file->getClientOriginalName();
            $path_upload = 'uploads/category/';
            $file->move($path_upload,$filename);

            $category->image = $path_upload.$filename;
        }

        $category->parent_id = $request->input('parent_id');
        $is_active = 0;
        if($request->has('is_active')){
            $is_active = $request->input('is_active');
        }
        $category->is_active = $is_active;

        $position = 0;
        if($request->has('position')){
            $position = $request->input('position');
        }
        $category->position = $position;

        $category->type = $request->input('type');

        $category->save();

        return redirect()->route('admin.category.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        // get data from db
        $all_cateogires = Category::all();

        $category = Category::findorFail($id);

        return view('backend.category.edit', [
            'all_categories' => $all_cateogires,
            'category' => $category
        ]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        //validate dữ liệu gửi từ form
        $request->validate([
            'name' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ], [
            'name.required' => 'Tên không được để trống',
            'image.image' => 'Ảnh không đúng định dạng'
        ]);

        //luu vào csdl
        $category = Category::findorFail($id);
        $category->name = $request->input('name');
        $category->slug = Str::slug($request->input('name'));
        $category->parent_id = $request->input('parent_id');

        if ($request->hasFile('new_image')) {
            // xóa file cũ
            @unlink(public_path($category->image));
            // get file mới
            $file = $request->file('new_image');
            // get tên
            $filename = time().'_'.$file->getClientOriginalName();
            // duong dan upload
            $path_upload = 'uploads/category/';
            // upload file
            $request->file('new_image')->move($path_upload,$filename);

            $category->image = $path_upload.$filename;
        }

        $is_active = 0;
        if ($request->has('is_active')) {//kiem tra is_active co ton tai khong?
            $is_active = $request->input('is_active');
        }

        $category->is_active = $is_active;
        $category->position = $request->input('position');
        $category->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        Category::destroy($id);

        $dataResp = [
            'status' => true
        ];

        return response()->json($dataResp, 200);
    }
}
