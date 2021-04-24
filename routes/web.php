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
Route::get('/', 'HomeController@index')->name('home');
Route::get('/san-pham/{slug}', 'HomeController@product')->name('home.product');
Route::get('/lien-he', 'HomeController@contact')->name('home.contact');
Route::post('/lien-he', 'HomeController@postContact')->name('home.postContact');
Route::get('/gioi-thieu', 'HomeController@about')->name('home.about');
Route::get('/gio-hang', 'CartController@index')->name('home.cart');
Route::get('/thanh-toan', 'CartController@checkout')->name('home.cart.checkout');


Route::get('/admin/login', 'AdminController@login')->name('admin.login');
Route::get('/admin', 'AdminController@login')->name('admin.index');
Route::get('/admin/logout', 'AdminController@logout')->name('admin.logout');
Route::post('/admin/login', 'AdminController@postLogin')->name('admin.postLogin');
Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'checkLogin'], function () {


    Route::resource('default', 'DefaultController');
    Route::resource('category', 'CategoryController');
    Route::resource('photo', 'PhotoController');
    Route::resource('vendor', 'VendorController');
    Route::resource('setting', 'SettingController');
    Route::resource('user', 'UserController');
    Route::resource('product', 'ProductController');
    Route::resource('article', 'ArticleController');
    Route::resource('banner', 'BannerController');
    Route::resource('brand', 'BrandController');
    Route::resource('contact', 'ContactController');
    Route::resource('dashboard', 'DashboardController');

});
