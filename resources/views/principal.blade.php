@extends('layouts.app')

@section('content')
 <div class="container">

        <div class="row">

            <div class="col-md-3">
<<<<<<< HEAD
                <p class="lead">Team Fortress</p>
                <div class="list-group"> 

                 @foreach($cat as $c)
                <li>
                    <a href="{{url('/mProductosPorCategoria')}}/{{$c->id_c}}" class="list-group-item">{{$c->nombre}}</a>
                </li>
                @endforeach

=======
                <p class="lead">TEAM FORTRESS</p>
                <div class="list-group">
                    <a href="agregar" class="list-group-item">Agregar</a>
                    <a href="modificar" class="list-group-item">Modificar</a>
                    <a href="buscar" class="list-group-item">Buscar</a>
>>>>>>> origin/master
                </div>
            </div>

<!--contenido de la pagina,mas valorados y carrusel-->
            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="{{asset ("/img/teamfortress.jpg")}}" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="{{asset ("/img/mapa1.jpg")}}" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="{{asset ("/img/mapa2.jpg")}}" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="{{asset ("/img/mapa3.jpg")}}" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="{{asset ("/img/mapa4.jpg")}}" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="{{asset ("/img/mapa5.jpg")}}" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>


<!--Aqui van los productos mas valorados-->



                </div>

            </div>

        </div>

    </div>
@endsection