@extends('layouts.app')
@section('content')
<div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Detalles del pedido</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">

                                                <tr><th>Nombre</th><td>{{ Auth::user()->name }}</td></tr>
                                                <tr><th>Correo</th><td>{{ Auth::user()->email }}</td></tr>
                                                <tr><th>Dirreccion</th><td>{{ Auth::user()->address }}</td></tr>
                                    </table>
                                </div>

                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>Producto</th>
                                                <th>Cantidad</th>
                                                <th>Precio unitario</th>
                                                <th>Subtotal</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            @foreach($mostrarCaja as $m)
                                             <tr>
                                                <td>{{$m->nombre}}</td>
                                                <td>{{$m->cantidadPedido}}</td>
                                                <td>MXN {{ number_format($m->precio,2)}}</td>
                                                <td>MXN {{ number_format($m->precio*$m->cantidadPedido, 2)}}</td>
                                            </tr> 
                                            @endforeach
                                         
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
    </div>
        <center>
         <a href="{{url('/carro')}}" class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-arrow-left"></span> Volver</a>
         <a href="{{url('/pedido')}}" class="btn btn-warning btn-lg">Hacer Pedido <span class="glyphicon glyphicon-heart"></span></a>
         </center>
@endsection