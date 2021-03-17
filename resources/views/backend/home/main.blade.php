<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Shop</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Owl-carousel CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha256-UhQQ4fxEeABh4JrcmAJ1+16id/1dnlOEVCFOxDef9Lw=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha256-kksNxjDRxd/5+jGurZUJd1sdR2v+ClrCl3svESBaJqw=" crossorigin="anonymous" />

    <!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />

    <!-- Custom CSS file -->
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Baloo+Thambi+2&family=Raleway&family=Rubik&display=swap");
        /*              Sass Template           */
        /*  global classes  */
        button, button:focus {
            outline: none !important;
            box-shadow: none !important;
        }

        /* typography classes */
        .font-baloo {
            font-family: "Baloo Thambi 2", cursive;
        }

        .font-rale {
            font-family: "Raleway", cursive;
        }

        .font-rubik {
            font-family: "Rubik", cursive;
        }

        .font-size-12 {
            font-size: 12px;
        }

        .font-size-14 {
            font-size: 14px;
        }

        .font-size-16 {
            font-size: 16px;
        }

        .font-size-20 {
            font-size: 20px;
        }

        /* Color Template  */
        .color-primary {
            color: #003859;
        }

        .color-primary-bg {
            background: #003859;
        }

        .color-second {
            color: #00A5C4;
        }

        .color-second-bg {
            background: #00A5C4;
        }

        .color-yellow {
            color: #FFD289;
        }

        .color-yellow-bg {
            background: #FFD289;
        }

        /*  top sale template   */
        #top-sale .owl-carousel .item .product a {
            overflow: hidden;
        }
        #top-sale .owl-carousel .item .product img {
            transition: transform 0.5s ease;
        }
        #top-sale .owl-carousel .item .product img:hover {
            transform: scale(1.1);
        }
        #top-sale .owl-carousel .owl-nav button {
            position: absolute;
            top: 30%;
            outline: none;
        }
        #top-sale .owl-carousel .owl-nav button.owl-prev {
            left: 0;
        }
        #top-sale .owl-carousel .owl-nav button.owl-prev span,
        #top-sale .owl-carousel .owl-nav button.owl-next span {
            font-size: 35px;
            color: #003859;
            padding: 0 1rem;
        }
        #top-sale .owl-carousel .owl-nav button.owl-prev span {
            margin-left: -4rem;
        }
        #top-sale .owl-carousel .owl-nav button.owl-next {
            right: 0;
        }
        #top-sale .owl-carousel .owl-nav button.owl-next span {
            margin-right: -4rem;
        }

        /*   Special Price Section Template */
        #special-price .grid .grid-item {
            margin-right: 1.2rem;
            margin-top: 1rem;
        }
        .sci
        {
            margin: 0;
            padding: 0;
            display: flex;
            /* //justify-content: center;
            //align-items: center; */
        }

        .sci li
        {
            list-style: none;
            margin: 0 10px;
        }

        .sci li a
        {
            color: #00A5C4;
            font-size: 1.5em;
            transition: 0.5s;
        }

        .sci li a:hover
        {
            color: blue;
        }

        /*# sourceMappingURL=style.css.map */

    </style>
</head>
<body>

<!-- start #header -->
@include('backend.home.header')
<!-- !start #header -->

<!-- start #main-site -->
<main id="main-site">

    <!-- Owl-carousel -->
    <section id="banner-area">
        <div class="owl-carousel owl-theme">
            <div class="item">
                <img src="/backend/dist/images/Banner1.png" alt="Banner1">
            </div>
            <div class="item">
                <img src="/backend/dist/images/Banner2.png" alt="Banner2">
            </div>
            <div class="item">
                <img src="/backend/dist/images/Banner1.png" alt="Banner3">
            </div>
        </div>
    </section>
    <!-- !Owl-carousel -->

    <!-- Top Sale -->
    <section id="top-sale">
        <div class="container py-5">
            <h4 class="font-rubik font-size-20">Top Sale</h4>
            <hr>
            <!-- owl carousel -->
            <div class="owl-carousel owl-theme">
                <div class="item py-2">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/1.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Samsung Galaxy 10</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/2.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/3.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/6.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Samsung Galaxy 10</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/1.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2">
                    <div class="product font-rale">
                        <div class="d-flex flex-column">
                            <a href="#"><img src="/backend/dist/images/products/1.png" class="img-fluid" alt="pro1"></a>
                            <div class="text-center">
                                <h6>Readme Note 7</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$122</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item py-2">
                    <div class="product font-rale">
                        <div class="d-flex flex-column">
                            <a href="#"><img src="/backend/dist/images/products/2.png" class="img-fluid" alt="pro1"></a>
                            <div class="text-center">
                                <h6>Readme Note 7</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$122</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- !owl carousel -->
        </div>
    </section>
    <!-- !Top Sale -->

    <!-- Special Price -->
    <section id="special-price">
        <div class="container">
            <h4 class="font-rubik font-size-20">Special Price</h4>
            <div id="filters" class="button-group text-right font-baloo font-size-16">
                <button class="btn is-checked" data-filter="*">All Brand</button>
                <button class="btn" data-filter=".Apple">Apple</button>
                <button class="btn" data-filter=".Samsung">Samsung</button>
                <button class="btn" data-filter=".Redmi">Redmi</button>
            </div>

            <div class="grid">
                <div class="grid-item Apple border">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <a href="#"><img src="/backend/dist/images/products/13.png" alt="product1" class="img-fluid"></a>
                            <div class="text-center">
                                <h6>Apple iPhone 10</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$152</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item Samsung border">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <a href="#"><img src="/backend/dist/images/products/11.png" alt="product1" class="img-fluid"></a>
                            <div class="text-center">
                                <h6>Samsung Galaxy 10</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$152</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item Redmi border">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <a href="#"><img src="/backend/dist/images/products/3.png" alt="product1" class="img-fluid"></a>
                            <div class="text-center">
                                <h6>Redmi Note 7 Pro</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$152</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item Apple border">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <a href="#"><img src="/backend/dist/images/products/14.png" alt="product1" class="img-fluid"></a>
                            <div class="text-center">
                                <h6>Apple iPhone 10</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$152</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item Samsung border">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <a href="#"><img src="/backend/dist/images/products/12.png" alt="product1" class="img-fluid"></a>
                            <div class="text-center">
                                <h6>Samsung Galaxy 10</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$152</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item  Redmi border ">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <div class="d-flex flex-column">
                                <a href="#"><img src="/backend/dist/images/products/4.png" class="img-fluid" alt="pro1"></a>
                                <div class="text-center">
                                    <h6>Redmi Note 7 Pro</h6>
                                    <div class="rating text-warning font-size-12">
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="far fa-star"></i></span>
                                    </div>
                                    <div class="price py-2">
                                        <span>$152</span>
                                    </div>
                                    <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item  Redmi border ">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <div class="d-flex flex-column">
                                <a href="#"><img src="/backend/dist/images/products/5.png" class="img-fluid" alt="pro1"></a>
                                <div class="text-center">
                                    <h6>Redmi Note 7 Pro</h6>
                                    <div class="rating text-warning font-size-12">
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="far fa-star"></i></span>
                                    </div>
                                    <div class="price py-2">
                                        <span>$152</span>
                                    </div>
                                    <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item  Redmi border ">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <div class="d-flex flex-column">
                                <a href="#"><img src="/backend/dist/images/products/6.png" class="img-fluid" alt="pro1"></a>
                                <div class="text-center">
                                    <h6>Redmi Note 7 Pro</h6>
                                    <div class="rating text-warning font-size-12">
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="far fa-star"></i></span>
                                    </div>
                                    <div class="price py-2">
                                        <span>$152</span>
                                    </div>
                                    <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item  Redmi border">
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <div class="d-flex flex-column">
                                <a href="#"><img src="/backend/dist/images/products/10.png" class="img-fluid" alt="pro1"></a>
                                <div class="text-center">
                                    <h6>Redmi Note 7 Pro</h6>
                                    <div class="rating text-warning font-size-12">
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="far fa-star"></i></span>
                                    </div>
                                    <div class="price py-2">
                                        <span>$152</span>
                                    </div>
                                    <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid-item Apple border  " >
                    <div class="item py-2" style="width: 200px;">
                        <div class="product font-rale">
                            <div class="d-flex flex-column">
                                <a href="#"><img src="/backend/dist/images/products/13.png" class="img-fluid" alt="pro1"></a>
                                <div class="text-center">
                                    <h6>Apple iPhone 10</h6>
                                    <div class="rating text-warning font-size-12">
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="far fa-star"></i></span>
                                    </div>
                                    <div class="price py-2">
                                        <span>$252</span>
                                    </div>
                                    <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- !Special Price -->

    <!-- Banner Ads  -->
    <section id="banner_adds">
        <div class="container py-5 text-center">
            <img src="/backend/dist/images/banner1-cr-500x150.jpg" alt="banner1" class="img-fluid">
            <img src="/backend/dist/images/banner2-cr-500x150.jpg" alt="banner1" class="img-fluid">
        </div>
    </section>
    <!-- !Banner Ads  -->

    <!-- New Phones -->
    <section id="new-phones">
        <div class="container">
            <h4 class="font-rubik font-size-20">New Phones</h4>
            <hr>

            <!-- owl carousel -->
            <div class="owl-carousel owl-theme">
                <div class="item py-2 bg-light">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/1.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Samsung Galaxy 10</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2 bg-light">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/2.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2 bg-light">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/3.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2 bg-light">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/6.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Samsung Galaxy 10</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2 bg-light">
                    <div class="product font-rale">
                        <a href="#"><img src="/backend/dist/images/products/1.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                    </div>
                </div>
                <div class="item py-2 bg-light">
                    <div class="product font-rale">
                        <div class="d-flex flex-column">
                            <a href="#"><img src="/backend/dist/images/products/1.png" class="img-fluid" alt="pro1"></a>
                            <div class="text-center">
                                <h6>Readme Note 7</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$122</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item py-2 bg-light">
                    <div class="product font-rale">
                        <div class="d-flex flex-column">
                            <a href="#"><img src="/backend/dist/images/products/2.png" class="img-fluid" alt="pro1"></a>
                            <div class="text-center">
                                <h6>Readme Note 7</h6>
                                <div class="rating text-warning font-size-12">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="far fa-star"></i></span>
                                </div>
                                <div class="price py-2">
                                    <span>$122</span>
                                </div>
                                <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- !owl carousel -->

        </div>
    </section>
    <!-- !New Phones -->

    <!-- Blogs -->
    <section id="blogs">
        <div class="container py-4">
            <h4 class="font-rubik font-size-20">Latest Blogs</h4>
            <hr>

            <div class="owl-carousel owl-theme">
                <div class="item">
                    <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                        <h5 class="card-title font-size-16">Upcoming Mobiles</h5>
                        <img src="/backend/dist/images/blog/blog1.jpg" alt="cart image" class="card-img-top">
                        <p class="card-text font-size-14 text-black-50 py-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis non iste sequi cupiditate tempora iure. Velit accusamus saepe harum sed.</p>
                        <a href="#" class="color-second text-left">Go somewhere</a>
                    </div>
                </div>
                <div class="item">
                    <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                        <h5 class="card-title font-size-16">Upcoming Mobiles</h5>
                        <img src="/backend/dist/images/blog/blog2.jpg" alt="cart image" class="card-img-top">
                        <p class="card-text font-size-14 text-black-50 py-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis non iste sequi cupiditate tempora iure. Velit accusamus saepe harum sed.</p>
                        <a href="#" class="color-second text-left">Go somewhere</a>
                    </div>
                </div>
                <div class="item">
                    <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                        <h5 class="card-title font-size-16">Upcoming Mobiles</h5>
                        <img src="/backend/dist/images/blog/blog3.jpg" alt="cart image" class="card-img-top">
                        <p class="card-text font-size-14 text-black-50 py-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis non iste sequi cupiditate tempora iure. Velit accusamus saepe harum sed.</p>
                        <a href="#" class="color-second text-left">Go somewhere</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- !Blogs -->

</main><!-- !start #main-site -->

<!-- start #footer -->
@include('backend.home.footer')
<div class="copyright text-center bg-dark text-white py-2">
    <p class="font-rale font-size-14">&copy; Copyrights 2020. Desing By <a href="#" class="color-second">Daily Tuition</a></p>
</div>
<!-- !start #footer -->

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<!-- Owl Carousel Js file -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha256-pTxD+DSzIwmwhOqTFN+DB+nHjO4iAsbgfyFq5K5bcE0=" crossorigin="anonymous"></script>

<!--  isotope plugin cdn  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha256-CBrpuqrMhXwcLLUd5tvQ4euBHCdh7wGlDfNz8vbu/iI=" crossorigin="anonymous"></script>

<!-- Custom Javascript -->
<script>
    $(document).ready(function(){

        // banner owl carousel
        $("#banner-area .owl-carousel").owlCarousel({
            dots: true,
            items: 1
        });

        // top sale owl carousel
        $("#top-sale .owl-carousel").owlCarousel({
            loop: true,
            nav: true,
            dots: false,
            responsive : {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000 : {
                    items: 5
                }
            }
        });

        // isotope filter
        var $grid = $(".grid").isotope({
            itemSelector : '.grid-item',
            layoutMode : 'fitRows'
        });

        // filter items on button click
        $(".button-group").on("click", "button", function(){
            var filterValue = $(this).attr('data-filter');
            $grid.isotope({ filter: filterValue});
        })


        // new phones owl carousel
        $("#new-phones .owl-carousel").owlCarousel({
            loop: true,
            nav: false,
            dots: true,
            responsive : {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000 : {
                    items: 5
                }
            }
        });

        // blogs owl carousel
        $("#blogs .owl-carousel").owlCarousel({
            loop: true,
            nav: false,
            dots: true,
            responsive : {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                }
            }
        })


        // product qty section
        let $qty_up = $(".qty .qty-up");
        let $qty_down = $(".qty .qty-down");
        let $deal_price = $("#deal-price");
        // let $input = $(".qty .qty_input");

        // click on qty up button
        $qty_up.click(function(e){

            let $input = $(`.qty_input[data-id='${$(this).data("id")}']`);
            let $price = $(`.product_price[data-id='${$(this).data("id")}']`);

            // change product price using ajax call
            $.ajax({url: "template/ajax.php", type : 'post', data : { itemid : $(this).data("id")}, success: function(result){
                    let obj = JSON.parse(result);
                    let item_price = obj[0]['item_price'];

                    if($input.val() >= 1 && $input.val() <= 9){
                        $input.val(function(i, oldval){
                            return ++oldval;
                        });

                        // increase price of the product
                        $price.text(parseInt(item_price * $input.val()).toFixed(2));

                        // set subtotal price
                        let subtotal = parseInt($deal_price.text()) + parseInt(item_price);
                        $deal_price.text(subtotal.toFixed(2));
                    }

                }}); // closing ajax request
        }); // closing qty up button

        // click on qty down button
        $qty_down.click(function(e){

            let $input = $(`.qty_input[data-id='${$(this).data("id")}']`);
            let $price = $(`.product_price[data-id='${$(this).data("id")}']`);

            // change product price using ajax call
            $.ajax({url: "template/ajax.php", type : 'post', data : { itemid : $(this).data("id")}, success: function(result){
                    let obj = JSON.parse(result);
                    let item_price = obj[0]['item_price'];

                    if($input.val() > 1 && $input.val() <= 10){
                        $input.val(function(i, oldval){
                            return --oldval;
                        });


                        // increase price of the product
                        $price.text(parseInt(item_price * $input.val()).toFixed(2));

                        // set subtotal price
                        let subtotal = parseInt($deal_price.text()) - parseInt(item_price);
                        $deal_price.text(subtotal.toFixed(2));
                    }

                }}); // closing ajax request
        }); // closing qty down button


    });
</script>
</body>
</html>
