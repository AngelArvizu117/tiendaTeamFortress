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

Route::get('/','productosController@mCategorias');
Route::get('/home','productosController@mCategorias');

Route::get('/mProductosPorCategoria/{id}','productosController@mProductosPorCategoria');
Route::get('/mProductoIndividual/{id}','productosController@mProductoIndividual');

Route::get('/administrador','adminController@mAdmin');
Route::get('/mComentarios','adminController@mComentarios');
Route::get('/eliminarComentario/{id}','adminController@eliminarComentario');

Auth::routes();

