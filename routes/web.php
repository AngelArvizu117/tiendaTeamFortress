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

//generales


Route::get('/mModificaCategorias/{id}','adminController@modificacategoria');



Route::get('/','productosController@mCategorias');
Route::get('/home','productosController@mCategorias');

Route::get('/mProductosPorCategoria/{id}','productosController@mProductosPorCategoria');
Route::get('/mProductoIndividual/{id}','productosController@mProductoIndividual');

Route::get('/administrador','adminController@mAdmin');

//comentarios
Route::get('/mComentarios','adminController@mComentarios');
Route::post('/nComentario','productosController@nComentario');
Route::get('/eliminarComentario/{id}','adminController@eliminarComentario');

//categorias
Route::get('/mCategorias','adminController@mCategorias');
Route::get('/eliminarCategoria/{id}','adminController@eliminarCategoria');
Route::get('/mAsignarCategoriaProducto','adminController@mAsignarCategoriaProducto');
Route::post('/asignarCategoria','adminController@asignarCategoria');


//productos
Route::get('/mProductos','adminController@mProductos');
Route::get('/nProductoIndividual','adminController@nProductoIndividual');
Route::get('/nProductoCsv','adminController@nProductoCsv');
Route::post('/guardarProducto','adminController@guardarProducto');
Route::post('/guardarProductoCsv','adminController@guardarProductoCsv');
Route::get('/inventario','adminController@inventario');

//pedidos
Route::get('/mPedidos','adminController@mPedidos');

//carro
Route::get('/carro','cartController@carro')->middleware('auth');
Route::get('/addCar/{id}','cartController@addCar');
Route::get('/eliminarCar/{id}','cartController@eliminarCar');
Route::get('/caja','cartController@caja');
Route::post('/actualizarCarro','cartController@actualizarCarro');
Route::post('/pedido','cartController@hacerPedido');

Auth::routes();

