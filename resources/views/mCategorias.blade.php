    @extends('indexAdmin')
    @section('content')
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Categorias</h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Categoria</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        <tbody>
                                 @foreach($categorias as $ca)
                                     <tr>
                                        <td>{{$ca->id}}</td>
                                        <td>{{$ca->nombre}}</td>
                                        <td><a href="{{url('/eliminarCategoria')}}/{{$ca->id}}" class="btn btn-danger btn-xs">Eliminar</a>
                                         <a href="{{url('/mModificaCategorias')}}/{{$ca->id}}" class="btn btn-primary btn-xs">Modificar</a></td>
                                    </tr>
                                @endforeach
                                            

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
    @endsection