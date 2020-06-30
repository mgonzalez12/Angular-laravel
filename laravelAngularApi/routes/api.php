<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['middleware' => ['cors'], 'namespace' => 'Auth'], function () {
    Route::post('login', 'PassportController@login');      
    Route::post('register', 'PassportController@register');    
});

Route::group(['middleware' => ['cors','auth:api'], 'namespace' => 'Auth'], function () {
    Route::post('logout', 'PassportController@logout'); 
});

Route::group(['middleware' => ['cors','auth:api'], 'namespace' => 'Admin'], function () {
    Route::resource('user-list', 'UserListController');
});


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


// para pruebas simples de autenticacion sin middleware
    // Route::post('register', 'Auth\PassportController@register'); 
    // Route::post('login', 'Auth\PassportController@login');   
