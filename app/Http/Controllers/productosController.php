<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categoria;
use App\Producto;
use App\Comentario;
use DB;
use Redirect;

class productosController extends Controller
{
    public function mCategorias(){
        //muestra todas las categorias registradas
      $cat=Categoria::all();
      return view('/principal',compact('cat'));

    }

     public function mProductosPorCategoria($id){

        //se consulta los productos por categoria por su id
      $productos=DB::table('productos_categorias as pc')
     ->join('productos as p','pc.id_producto','=','p.id_p')
     ->join('categorias as c','pc.id_categoria','=','c.id_c')
       ->select('p.id_p','p.nombre','p.descripcion','p.precio','p.cantidad','p.imagen')
       ->where('c.id_c','=',$id)
       ->get();

       //muestra todas las categorias registradas
        $cat=Categoria::all();

        $catName=DB::table('categorias as c')
        ->select('c.nombre')
        ->where('c.id_c','=',$id)
        ->first();

      return view('/categoria',compact('cat','productos','catName'));
    }

    public function mProductoIndividual($id){

        //informacion del producto por su id
      $producto=DB::table('productos as p')
    ->select('p.id_p','p.nombre','p.descripcion','p.precio','p.cantidad','p.imagen')
    ->where('p.id_p','=',$id)
    ->get();

        //consulta los comentarios que tiene un X producto y quien lo escribio y las esstrellas 
        $comenta=DB::table('comentarios as c')
       ->join('productos as p','c.id_producto','=','p.id_p')
       ->join('users as u','c.id_user','=','u.id')
       ->select('c.comentario','u.name','c.created_at','c.estrellas')
       ->where('p.id_p','=',$id)
       ->get();

       //muestra todas las categorias registradas
       $cat=Categoria::all();
      return view('/producto',compact('comenta','cat','producto'));

    }

    public function carro(){

    }

    public function addCar(){
        
    }

    public function nComentario(Request $datos){

      $nuevoC= new Comentario();
      $nuevoC->id_producto=$datos->input('id_producto');
      $nuevoC->id_user=$datos->input('id_user');
      $nuevoC->comentario=$datos->input('comentario');
      $nuevoC->estrellas=$datos->input('star');
      $nuevoC->save();

      return Redirect::back();

    }
}
