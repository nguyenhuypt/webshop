<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::latest()->paginate(15);
        return view('backend.user.index',[
            'data' => $users
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.user.create');
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
            'role_id' => 'required|integer',
            'name' => 'required|max:255',
            'email' => 'required|email',
            'password' => 'required|min:6',
            'avatar' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ]);

        $name  = $request->input('name');
        $role_id  = (int)$request->input('role_id');
        $email = $request->input('email');
        $pwd = $request->input('password');

        $path_avatar = '';
        if ($request->hasFile('avatar')) {
            // get file
            $file = $request->file('avatar');
            // get ten
            $filename = $file->getClientOriginalName(); // lấy tên gốc của ảnh
            // duong dan upload
            $path_upload = 'uploads/user/';
            // upload file
            $file->move($path_upload,$filename);
            $path_avatar = $path_upload.$filename;
        }

        $is_active = 0; // default
        if ($request->has('is_active')) {
            $is_active = (int)$request->input('is_active');
        }

        $user = new User(); // đ/n 1 đối tượng mới cụ thể từ 1 lớp.
        $user->name = $name;
        $user->role_id = $role_id;
        $user->email = $email;
        $user->password = bcrypt($pwd);
        $user->is_active = $is_active;
        $user->avatar = $path_avatar;
        $user->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.user.index');

    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
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
        //$user = User::findOrFail($id); // Tìm kiếm nhưng mà không thấy thì trả về message lỗi
        $user = User::find($id);

        return view('backend.user.edit', [
            'data' => $user
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
        // Kiểm tính đúng đắn của dữ liệu
        $request->validate([
            'role_id' => 'required|integer',
            'name' => 'required|max:255',
            'email' => 'required|email'
            //'password' => 'required|min:6',
            //'avatar' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000'
        ]);

        $name  = $request->input('name');
        $role_id  = (int) $request->input('role_id');
        $email = $request->input('email');
        $pwd = $request->input('password');



        $is_active = 0; // default
        if ($request->has('is_active')) {
            $is_active = (int) $request->input('is_active');
        }

        $user = User::find($id); // đ/n 1 đối tượng mới cụ thể từ 1 lớp.
        $user->name = $name;
        $user->role_id = $role_id;
        $user->email = $email;
        if (!empty($pwd)) {
            $user->password = bcrypt($pwd);
        }
        $user->is_active = $is_active;

        if ($request->hasFile('avatar')) {
            // get file
            $file = $request->file('avatar');
            // get ten
            $filename = $file->getClientOriginalName(); // lấy tên gốc của ảnh
            // duong dan upload
            $path_upload = 'uploads/user/';
            // upload file
            $file->move($path_upload,$filename);
            $path_avatar = $path_upload.$filename;
            $user->avatar = $path_avatar;
        }

        $user->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.user.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::destroy($id);

        $dataResp = [
            'status' => true
        ];

        return response()->json($dataResp,200);
    }
}
