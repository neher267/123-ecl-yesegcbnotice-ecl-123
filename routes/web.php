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

Auth::routes(['verify' => TRUE]);

Route::get('/', 'HomeController@index');
Route::get('notice/{filename}', 'HomeController@index')->where('filename', '^[^/]+$');;

/*
* This route are used for Admin users
*/
Route::group(['prefix'=>'dashboard', 'namespace'=>'Backend', 'middleware'=>['auth']], function() {
	
	Route::get('/', 'DashboardController@index');
	Route::get('users', 'UserManagementController@index')->name('users');
	Route::get('profile', 'ProfileController@show')->name('user.profile');
	Route::get('profile/edit', 'ProfileController@edit')->name('profile.edit');
	Route::get('profile/settings', 'ProfileController@settings')->name('profile.settings');
	Route::POST('profile/settings/change-password', 'ProfileController@changePassword')
			->name('profile.settings.pass.change');
	Route::PUT('profile/{user}/update', 'ProfileController@update')->name('profile.update');
	// Route::get('users/{user}', 'UserManagementController@index')->name('users.edit');
	Route::delete('users/{user}', 'UserManagementController@destroy')->name('users.destroy');
	Route::resource('manage-notice','NoticeController');
	// Route::get('/manage-notice/types/{type}', 'DashboardController@index')->name('manage-notice.type');
});

