<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;

class HomeController extends GeneralController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('frontend.home');

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function contact()
    {
        return view('frontend.contact');
    }

    public function __construct()
    {
        parent::__construct();
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

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
