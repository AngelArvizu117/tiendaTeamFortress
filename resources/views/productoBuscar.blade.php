@extends('layouts.app')

@section('content')
<div class="row tools-default">
					<div class="col-sm-6 search-default" aling=center>

						<div class="input-group">
							
							<input type="text" class="form-control" placeholder="BUSCAR ARTICULO..." ng-model="filter" style="margin-left: 500px">
							<button type="button" class="btn btn-info" style=" position: absolute;" >Buscar</button>
							 
						</div>


					</div>
				</div>
@endsection