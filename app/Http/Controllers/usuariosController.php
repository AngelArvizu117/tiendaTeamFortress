<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\usuarios;
use App\Http\Requests;
use DB;

class usuariosController extends Controller
{
public function registroUsuarios(){
    	return view('registroUsuarios');
    }

}
