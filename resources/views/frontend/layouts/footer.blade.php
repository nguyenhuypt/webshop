<footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
    <div class="flex-w p-b-90">
        <div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
            <h4 class="s-text12 p-b-30">
                Company
            </h4>

            <div>
                <p style="font-size: large;" class="s-text5 w-size27">
                    {{$setting->company}}
                </p>
                <br>
                <div>
                    <ul>
                        <li><span class="icon icon-map-marker"></span><span class="text">{{ $setting->address }}</span></li>
                        <li><a href="#"><span class="icon icon-phone"></span><span class="text">{{ $setting->hotline }}</span></a></li>
                        <li><a href="#"><span class="icon icon-envelope"></span><span class="text">{{ $setting->email }}</span></a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
            <h4 class="s-text12 p-b-30">
                Menu
            </h4>

            <ul>
                <li class="p-b-9">
                    <a href="" class="s-text7">
                        Cửa hàng
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        về chúng tôi
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Bài viết
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="{{route('home.contact')}}" class="s-text7">
                        Liên lạc với chúng tôi
                    </a>
                </li>
            </ul>
        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
            <h4 class="s-text12 p-b-30">
                HELP
            </h4>

            <ul>
                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Các điều khoản
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="s-text7">
                        Các vấn đề pháp lý
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="{{route('home.contact')}}" class="s-text7">
                        Hỏi đáp
                    </a>
                </li>

                <li class="p-b-9">
                    <a href="{{route('home.contact')}}" class="s-text7">
                        Liên hệ
                    </a>
                </li>
            </ul>
        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
            <h4 class="s-text12 p-b-30">
                Link
            </h4>

            <ul>
                <li class="p-b-9">
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-facebook ">Facebook</a>
                </li>

                <li class="p-b-9">
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-instagram">Instagram</a>

                </li>

                <li class="p-b-9">
                    <a href="#" class="fs-18 color1 p-r-20 fa fa-youtube-play">Youtube</a>

                </li>


            </ul>
        </div>

        <div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">
            <h4 class="s-text12 p-b-30">
                Newsletter
            </h4>

            <form>
                <div class="effect1 w-size9">
                    <input class="s-text7 bg6 w-full p-b-5" type="text" name="email" placeholder="email@example.com">
                    <span class="effect1-line"></span>
                </div>

                <div class="w-size2 p-t-20">
                    <!-- Button -->
                    <button class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
                        Subscribe
                    </button>
                </div>

            </form>
        </div>
    </div>

    <div class="t-center p-l-15 p-r-15">
        <a href="#">
            <img class="h-size2" src="frontend/images/icons/paypal.png" alt="IMG-PAYPAL">
        </a>

        <a href="#">
            <img class="h-size2" src="frontend/images/icons/visa.png" alt="IMG-VISA">
        </a>

        <a href="#">
            <img class="h-size2" src="frontend/images/icons/mastercard.png" alt="IMG-MASTERCARD">
        </a>

        <a href="#">
            <img class="h-size2" src="frontend/images/icons/express.png" alt="IMG-EXPRESS">
        </a>

        <a href="#">
            <img class="h-size2" src="frontend/images/icons/discover.png" alt="IMG-DISCOVER">
        </a>

        <div class="t-center s-text8 p-t-20">
            Copyright © 2018 All rights reserved. | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
        </div>
    </div>
</footer>


