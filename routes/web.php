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

Route::get('/', function () {
    return view('welcome');
});

Route::get('manager', function () {
    return view('manager');
});
Route::get('product', function () {
    return view('product');
});


Route::get('stores', 						'StoreController@showAllStores');
Route::get('assign', 						'ProductController@assign');
Route::get('stores/{store_id}', 			'StoreController@singleStore');
Route::post('manager', 						'AdminController@storeManager');
Route::post('store', 						'AdminController@store');
Route::post('product', 						'AdminController@createProduct');
Route::post('assign-product', 				'AdminController@assignProduct');
Route::post('assign-manager', 				'AdminController@assignManager');
// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
