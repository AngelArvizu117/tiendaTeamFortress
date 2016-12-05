<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto;
use DB;
use App\Carro;
use App\Mail\correos;
use Illuminate\Support\Facades\Mail;

class cartController extends Controller
{

    //no implementado
    public function mArticulos(){
        
        $id_user = \Auth::user()->id;
      $carrito = DB::select('SELECT * FROM carrito WHERE id_user='. $id_user .';');
        $articulosCarrito=count($carrito);
    }

    public function carro(){

        $id_user = \Auth::user()->id;

        $existe = DB::select('SELECT * FROM carrito WHERE id_user='. $id_user .';');
        if(count($existe) <= 0){
            return view('carroVacio');
        }else{

        /*$mostrarCarro=DB::table('carrito as c')
        ->join('productos as p','c.id_producto','=','p.id')
        ->join('users as u','c.id_user','=','u.id')
        ->select('p.nombre','p.cantidad','p.precio','c.cantidadPedido','c.id_producto')
        ->where('c.id_user',$id_user)
        ->get();*/

        $productosCarrito = DB::select("select p.nombre, p.cantidad, p.precio, c.cantidadPedido,c.id_producto,(p.precio*c.cantidadPedido) as 'subtotal'
                        from carrito c
                        inner join users u on c.id_user = u.id
                        inner join productos p on c.id_producto = p.id
                        where c.id_user = " . $id_user);

    }
        return view('carro',compact('productosCarrito'));

    }

    public function addCar($id){

       /* $catidadOld=DB::table('carrito as c')
        ->select('c.cantidadPedido')
        ->get();
        DB::update('update carrito set cantidadPedido = '.$cantidaOld+1.' where id_producto = ' . $id);
           */
        $id_user = \Auth::user()->id;

        $existe = DB::select('SELECT * FROM carrito WHERE id_producto='. $id .' AND id_user=' .$id_user.';');
        if(count($existe) > 0)
        {
             flash()->overlay('Articulo ya agregado al carrito', 'Atención');

        }else{

        $nuevoArticulo= new Carro();
        $nuevoArticulo->id_producto=$id;
        $nuevoArticulo->id_user=$id_user;
        $nuevoArticulo->save();

		flash()->overlay('Articulo agregado al carrito', 'Atención');
        }

		return redirect()->back(); 	
    }
    public function eliminarCar($id){   

		DB::table('carrito')->where('id_producto', '=', $id)->delete();
 		flash()->overlay('Articulo borrado del carrito', 'Atención');
		return redirect()->back(); 	
   		
    }

    public function caja(){

        $id_user = \Auth::user()->id;

        $existe = DB::select('SELECT * FROM carrito WHERE id_user='. $id_user .';');
        if(count($existe) <= 0)
        {
            return view('carroVacio');

        }else{

      $mostrarCaja = DB::select("select p.nombre, p.cantidad, p.precio, c.cantidadPedido,c.id_producto,(p.precio*c.cantidadPedido) as 'subtotal'
                        from carrito c
                        inner join users u on c.id_user = u.id
                        inner join productos p on c.id_producto = p.id
                        where c.id_user = " . $id_user);

    }
        return view('caja',compact('mostrarCaja'));

    }

    public function actualizarCarro(Request $datos){

      $id_p=$datos->input('id_producto');
      $cantidad=$datos->input('cantidad_articulos');

      $nuevaCantidad=DB::table('carrito')
            ->where('id_producto', $id_p)
            ->update(['cantidadPedido' => $cantidad]);

            return redirect()->back();
    }

    public function hacerPedido(){

        $id_user = \Auth::user()->id;
        $mostrarCaja=DB::table('carrito as c')
        ->join('productos as p','c.id_producto','=','p.id')
        ->join('users as u','c.id_user','=','u.id')
        ->select('p.nombre','p.cantidad','p.precio','c.cantidadPedido','c.id_producto')
        ->where('c.id_user',$id_user)
        ->get();

        Mail::to(\Auth::user()->email)->send(new correos());
        flash()->overlay('Se a enviado un correo a tu email con los datos de tu compra :)', 'Atención');
        return redirect()->back();
       
    }

}
