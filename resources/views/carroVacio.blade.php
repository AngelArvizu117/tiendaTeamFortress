@extends('layouts.app')
@section('content')

<div class="jumbotron">
	<h1 class="text-center">Carrito vacío <span class="glyphicon glyphicon-shopping-cart"></h1>
	<br>
	<hr>
	<p class="text-center"><a class="btn btn-warning btn-lg" href="{{url('/home')}}" role="button">Seguir comprando <span class="glyphicon glyphicon-heart"></span></a></p>
</div>

@endsection