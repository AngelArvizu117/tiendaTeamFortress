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
                         <form form action="{{url('/modificacategoria')}}/{{$categorias->id}}" method="POST">
                            <input type="hidden" name="_token" value="{{csrf_token() }}">
                            <div class="form-group">
                                <label for="categoria">Categoria</label>
                                <input type="text" class="form-control" name="categoria" required value="{{$categorias->categoria}}">
                            </div>

                            <input type="submit" class="btn btn-primary" value="Actualizar">
                            <a href="{{url('/consultarUsuarios')}}" class="btn btn-danger">Cancelar</a>
                        </form>           
                    </thead>
                    <tbody>


                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>

@endsection
