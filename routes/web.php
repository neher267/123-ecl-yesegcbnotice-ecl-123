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

Auth::routes(['verify' => true]);

Route::get('/', 'HomeController@index');

/*
* This route are used for Admin users
*/
Route::group(['prefix'=>'dashboard', 'namespace'=>'Backend', 'middleware'=>['auth']], function() {
	
	Route::get('/', 'DashboardController@index');
	Route::resource('manage-notice','NoticeController');
	// Route::get('/manage-notice/types/{type}', 'DashboardController@index')->name('manage-notice.type');
});
