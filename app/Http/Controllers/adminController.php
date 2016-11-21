<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comentario;
use App\Categoria;
use App\Producto;
use DB;

class adminController extends Controller
{
    public function mAdmin(){
    	return view('/indexAdmin');
    }

    public function mComentarios(){

    	$comentarios=DB::table('comentarios as c')
       ->join('productos as p','c.id_producto','=','p.id_p')
       ->join('users as u','c.id_user','=','u.id')
       ->select('c.id','u.name','p.nombre','c.comentario')
       ->get();

    	return view('/mComentarios',compact('comentarios'));
    }

    public function eliminarComentario($id){
    	Comentario::find($id)->delete();
    	return Redirect('/mComentarios');
    }

    public function mCategorias(){
      $categorias=DB::table('productos as p')
      ->join('productos_categorias as pc', 'p.id_p','=','pc.id_producto')
      ->join ('categorias as ca', 'pc.id_categoria', '=', 'ca.id_c')
      ->select ('ca.id_c','ca.nombre')
      ->get();
      return view('/mCategorias', compact('categorias'));
    }

      public function eliminarCategoria($id_c){
      Categoria::find($id_c)->delete();
      return Redirect('/mCategorias');
    }
      public function AgregarCategoria($id_c){
      return Redirect('/mCategorias');
    }

    public function ModificarCategoria($id_c){
      return Redirect('/mCategorias');
    }

     
}
