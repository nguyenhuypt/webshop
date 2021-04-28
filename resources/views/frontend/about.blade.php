@extends('frontend.layouts.main')

@section('content')

    <!-- Title Page -->
<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url('frontend/images/about.jpg');">

</section>

<!-- content page -->
<section class="bgwhite p-t-66 p-b-38">
    <div class="container">
        <div class="row">
            <div class="col-md-4 p-b-30">
                <div class="hov-img-zoom">
                    <img height="500" src="/frontend/images/abc.jpg" alt="IMG-ABOUT">
                </div>
            </div>
            @foreach($settings as $item)
            <div class="col-md-8 p-b-30">
                <h3 class="m-text26 p-t-15 p-b-16">
                    Our story
                </h3>

                <p class="p-b-28">{{$item->introduce}}</p>


                </div>
            </div>
            @endforeach
        </div>

</section>
@endsection
