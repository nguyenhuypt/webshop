@extends('frontend.layouts.main')

@section('content')

    <style>
        .buyother {
            display: block;
            overflow: hidden;
            background: #fff;
            line-height: 40px;
            text-align: center;
            margin: 15px auto;
            width: 300px;
            font-size: 14px;
            color: #288ad6;
            font-weight: 600;
            text-transform: uppercase;
            border: 1px solid #288ad6;
            border-radius: 4px;
        }
    </style>
    <div style="height: 300px;padding: 40px 300px">
        <h3 class="text-center">{{ session('msg') ? session('msg') : '' }}</h3>
        <a href="/" class="buyother"><i class="fa fa-chevron-left"></i> Về trang chủ</a>
    </div>

@endsection
