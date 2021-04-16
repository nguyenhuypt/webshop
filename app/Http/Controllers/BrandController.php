<?php

namespace App\Http\Controllers;

use App\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $brand = Brand::latest()->paginate(15);

        return view('backend.brand.index',[
            'data' => $brand
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.brand.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate dữ liệu
        $request->validate([
            'name' => 'required|max:255',
            //'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ], [
            'name'.'required' => 'tên không được để trống',
            //'image'.'image' => 'ảnh không đúng định dạng'
        ]);

        //Khởi tạo Model và gán giá trị từ form cho những thuộc tính của đối tượng (cột trong CSDL)
        $brand = new Brand();
        $brand->name = $request->input('name');
        $brand->slug = Str::slug($brand->name, '-');

        if ($request->hasFile('image')) { // dòng này Kiểm tra xem có image có được chọn
            // get file
            $file = $request->file('image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/brand/';
            // Thực hiện upload file
            $file->move($path_upload,$filename);

            $brand->image = $path_upload.$filename;
        }

        // website
        $brand->website = $request->input('website');

        // Trạng thái
        if ($request->has('is_active')){//kiem tra is_active co ton tai khong?
            $brand->is_active = $request->input('is_active');
        }
        // Vị trí
        $brand->position = $request->input('position');
        // Lưu
        $brand->save();

        // Chuyển hướng trang về trang danh sách
        return redirect()->route('admin.brand.index');
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
        $brand = Brand::findorFail($id);

        return view('backend.brand.edit', [
            'brand' => $brand
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
        $request->validate([
            'name' => 'required|max:255',
            //'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ], [
            'name'.'required' => 'tên không được để trống',
            //'image'.'image' => 'ảnh không đúng định dạng'
        ]);

        //Khởi tạo Model và gán giá trị từ form cho những thuộc tính của đối tượng (cột trong CSDL)
        $brand = Brand::findorFail($id);
        $brand->name = $request->input('name');
        $brand->slug = Str::slug($brand->name, '-');

        if ($request->hasFile('new_image')) { // dòng này Kiểm tra xem có image có được chọn
            @unlink(public_path($brand->image));
            // get file
            $file = $request->file('new_image');
            // đặt tên cho file image
            $filename = time().'_'.$file->getClientOriginalName(); // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            $path_upload = 'uploads/brand/';
            // Thực hiện upload file
            $file->move($path_upload,$filename);

            $brand->image = $path_upload.$filename;
        }

        // website
        $brand->website = $request->input('website');

        // Trạng thái
        if ($request->has('is_active')){//kiem tra is_active co ton tai khong?
            $brand->is_active = $request->input('is_active');
        }
        // Vị trí
        $brand->position = $request->input('position');
        // Lưu
        $brand->save();

        // Chuyển hướng trang về trang danh sách
        return redirect()->route('admin.brand.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Brand::destroy($id);

        $data = [
            'status' => true
        ];
        return response()->json($data,200);
    }
}
