<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto;
use DB;
use App\Carro;
class cartController extends Controller
{
	protected $carro;
	function __construct(Carro $carro) {
		$this->carro = $carro;
	}

    public function carro(){
    	$ids = [];
    	$carrito = $this->carro->get();
    	foreach ($carrito as $value) {
	    	$ids[]= $value['product'];
    	}
    	$productos = DB::table('productos')
                    ->whereIn('id', $ids)->get();
    	dd($carrito);
    	return view('',compact('productos','carrito'));
    }
    public function addCar($id){
		$this->carro->add($id);
		flash()->overlay('Articulo agregado al carrito', 'Atención');
		return redirect()->back(); 	
    }
    public function eliminarCar($id='')
    {
		$this->carro->delete($id);
 		flash()->overlay('Articulo borrado al carrito', 'Atención');
		return redirect()->back(); 	
   		
    }
}
