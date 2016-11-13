@extends('layouts.app')

@section('content')
<div class="col-sm-10 col-sm-offset-1 section">
	<div class="row form-default">
		<div class="col-xs-12">
			<h2 ng-if="!editar.status">Agregar un Nuevo Producto</h2>
			<form onSubmit="return false;" class="form-validate">
				<div class="detail">
					<div class="row">
						<div class="col-sm-6">

							<div class="form-group">
								<label>Nombre</label>
								<input type="text" class="form-control input-sm required" maxlength="100" />
							</div>
							<div class="form-group">
								<label>Descripcion:</label>
								<textarea class="form-control input-sm required" maxlength="200" cols="30" rows="10"></textarea>
								<div class="form-group">
								<label>Cantidad</label>
								<input type="text" class="form-control input-sm required" />
							</div>
							</div>

						</div>
						<div class="col-sm-6">

							<div class="form-group">
								<label>Codigo</label>
								<input type="text" class="form-control input-sm required" />
							</div>

							<div class="form-group">
								<label>Precio</label>
								<input type="Text" class="form-control input-sm required"
								ng-model="portafolio.vc_url"/>
							</div>

							<div class="form-group">
								<label>Categoria</label>
								<select>
								<option value="Primaria">Primaria</option>
								<option value="Secundaria">Secundaria</option>
								<option value="Terciaria">Terciaria</option>
								</select>
							</div>

							<div class="form-group">
								<label>Imagen </label>
								<div class="images">

									<h5 ng-show="editar.imgShow">Para remplazar la imagen, debe subir una nueva</h5>
									<input type="file" nv-file-select="" uploader="uploader" class="form-control"  multiple/>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="buttons text-right">
							<button type="button" class="btn btn-success" ng-click="guardar()"><i class="fa fa-hdd-o fa-fw"></i> Guardar</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

@endsection