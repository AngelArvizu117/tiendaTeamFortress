<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Usuario;
use App\Http\Requests;
use DB;
use Session;
class usuariosController extends Controller
{
public function registroUsuarios(){
    	return view('registroUsuarios');
    }

public function guardar(Request $datos){
    	$nuevo = new Usuario;
    	$nuevo->nombre=$datos->input('nombre');
    	$nuevo->edad=$datos->input('edad');
    	$nuevo->direccion=$datos->input('direccion');
    	$nuevo->correo=$datos->input('correo');
    	$nuevo->telefono=$datos->input('telefono');
    	$nuevo->save();


    	Session::flash('avisoSuccess','Se ha registrado correctamente');
    	return Redirect('/registroUsuarios');
    }


}
