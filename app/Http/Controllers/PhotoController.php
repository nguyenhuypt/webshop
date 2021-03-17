<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PhotoController extends Controller
{
    public  function index(){
        return view('backend.photo.index'); //include_one
    }

    public  function create(){
        return view('backend.photo.create'); //include_one
    }
}
