<?php

namespace App\Http\Controllers;

use App\Producto;
use DB;
use App\Carro;
use App\Mail\correos;
use App\Compra_Producto;
use App\Compra;
use App\Categoria;
use Illuminate\Http\Request;

class userController extends Controller
{
    public function pedidosUsuario(){

    	//mostrar los articulos que compro cierto usuario
    	$id_user = \Auth::user()->id;

    	$mostrarPedidos = DB::select("select p.nombre, cp.cantidad,cp.importe
                        from compras_productos cp
                        inner join compras c on cp.id_compra=c.id
                        inner join users u on c.id_user = u.id
                        inner join productos p on cp.id_producto = p.id
                        where c.id_user = " . $id_user);
    		
    		return view('/pedidos',compact('mostrarPedidos'));
    }



}
