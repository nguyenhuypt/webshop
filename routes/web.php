<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Support\Facades\Route;
//trang chu
Route::get('/', 'HomeController@index')->name('home');
//chi tiet sp
Route::get('/san-pham/{slug}', 'HomeController@product')->name('home.product');
Route::get('/lien-he', 'HomeController@contact')->name('home.contact');
Route::post('/lien-he', 'HomeController@postContact')->name('home.postContact');
Route::get('/gioi-thieu', 'HomeController@about')->name('home.about');
//gio hang
Route::get('/dat-hang', 'CartController@index')->name('home.cart');
// Thêm sản phẩm vào giỏ hàng
Route::post('/dat-hang/them-sp-vao-gio-hang', 'CartController@addToCart')->name('home.cart.add-to-cart');

Route::post('/add-product', 'HomeController@test')->name('test');

//thanh toan
Route::get('/thanh-toan', 'CartController@checkout')->name('home.cart.checkout');
//tin tuc
Route::get('/tin-tuc', 'HomeController@getListArticles')->name('home.article');
//chi tiet tin tuc
Route::get('/tin-tuc/{slug}_{id}', 'HomeController@getArticle')->name('home.article.detail');
//tim kiem
Route::get('/tim-kiem', 'HomeController@search')->name('home.search');
// Danh mục
Route::get('/danh-muc/{slug}', 'HomeController@getProductsByCategory')->name('home.category');

Route::get('/admin/login', 'AdminController@login')->name('admin.login');
Route::get('/admin', 'AdminController@login')->name('admin.index');
Route::get('/admin/logout', 'AdminController@logout')->name('admin.logout');
Route::post('/admin/login', 'AdminController@postLogin')->name('admin.postLogin');
Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'checkLogin'], function () {



    Route::resource('category', 'CategoryController');
    Route::resource('vendor', 'VendorController');
    Route::resource('setting', 'SettingController');
    Route::resource('user', 'UserController');
    Route::resource('product', 'ProductController');
    Route::resource('article', 'ArticleController');
    Route::resource('banner', 'BannerController');
    Route::resource('brand', 'BrandController');
    Route::resource('contact', 'ContactController');
    Route::get('/', 'AdminController@index')->name('dashboard');

});
