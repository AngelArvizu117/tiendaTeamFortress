@extends('layouts.app')
@section('content')
 <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Team Fortress</p>
                <div class="list-group"> 

                 @foreach($cat as $c)
                <li>
                    <a href="{{url('/mProductosPorCategoria')}}/{{$c->id_c}}" class="list-group-item">{{$c->nombre}}</a>
                </li>
                @endforeach

                </div>
            </div>

             <h2>Categoria: {{$catName->nombre}}</h2>

            @forelse ($productos as $p)
    			<div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="{{$p->imagen}}">
                            <div class="caption">
                                <h4 class="pull-right">MXN {{$p->precio}}</h4>
                                <h4><a href="{{url('/mProductoIndividual')}}/{{$p->id_p}}">{{$p->nombre}}</a>
                                </h4>
                                <p>{{$p->descripcion}}</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right"></p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

			@empty

					<center>
    				<p><h2>No se encontraron productos en esta categoria <span class="glyphicon glyphicon-remove-circle"></span></h2></p>
    				</center>
    				
			@endforelse

                </div>	
              </div>

            </div>

        </div>
 </div>
@endsection