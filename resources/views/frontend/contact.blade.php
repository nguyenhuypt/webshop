@extends('frontend.layouts.main')

@section('contact')


    <section class="bgwhite p-t-66 p-b-60">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.3929804818517!2d105.88758531476374!3d21.056960985983103!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a99b6dd51879%3A0x8e5c70132bed14bb!2zNDIgTmfDtCBHaWEgVOG7sSwgxJDhu6ljIEdpYW5nLCBMb25nIEJpw6puLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1599190711168!5m2!1svi!2s" width="600" height="550" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>

                <div class="col-md-6 p-b-30">
                    <form class="leave-comment" action="{{route('home.postContact')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <h4 class="m-text26 p-b-36 p-t-15">
                            Send us your message
                        </h4>

                        <div class="bo4 of-hidden size15 m-b-20">
                            <input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="name" placeholder="Full Name">
                            @if ($errors->has('name'))
                                <label style="font-weight: 600; font-size: 15px; margin-top: 5px; color: red">{{ $errors->first('name') }}</label>
                            @endif
                        </div>

                        <div class="bo4 of-hidden size15 m-b-20">
                            <input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="phone" placeholder="Phone Number">
                            @if ($errors->has('email'))
                                <label style="font-weight: 600; font-size: 15px; margin-top: 5px; color: red">{ $errors->first('email') }}</label>
                            @endif
                        </div>

                        <div class="bo4 of-hidden size15 m-b-20">
                            <input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="email" placeholder="Email Address">
                        </div>

                        <textarea class="dis-block s-text7 size20 bo4 p-l-22 p-r-22 p-t-13 m-b-20" name="content" placeholder="Message"></textarea>

                        <div class="w-size25">
                            <!-- Button -->
                            <button class="flex-c-m size2 bg1 bo-rad-23 hov1 m-text3 trans-0-4">
                                Send
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


@endsection
