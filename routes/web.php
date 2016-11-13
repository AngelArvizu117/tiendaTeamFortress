<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('principal');
});
Route::get('home', function () {
    return view('principal');
});


Route::get('agregar', function(){
	return view('productoNuevo');
});

Route::get('modificar', function(){
	return view('productoModificar');
});

Route::get('buscar',function(){
    return view('productoBuscar');
});



Route::get('/registroUsuarios', 'usuariosController@registroUsuarios');
Route::post('/guardarUsuarios','usuariosController@guardar');
Auth::routes();

