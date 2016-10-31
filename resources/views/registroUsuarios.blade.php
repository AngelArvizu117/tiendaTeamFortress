<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tienda Online</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="icon" type="image/png" href="{{asset ("/img/logo.jpg")}}">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{url('/home')}}">Inicio</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Administradores</a>
                    </li>
                    <li>
                        <a href="{{url('/registroUsuarios')}}">Usuarios</a>
                    </li>
                    <li>
                        <a href="#">Repositorio</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
 	<div class="container">
		<div class="row">
            @if(Session::has('avisoSuccess'))
            <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                {{Session::get('avisoSuccess')}}
            </div>
            @endif
			<div class="col-xs-12">
				<h2>Registrar Usuarios</h2>
				<hr>
				<form action="{{url('/guardarUsuarios')}}" method="POST">
				<input type="hidden" name="_token" value="{{csrf_token() }}">
				<div class="form-group">
					<label for="nombre">Nombre</label>
					<input type="text" class="form-control" name="nombre" required>
				</div>
				<div class="form-group">
					<label for="edad">Edad</label>
					<input type="number" class="form-control" name="edad" required>
				</div>
				<div class="form-group">
					<label for="direccion">Direccion</label>
					<input type="text" class="form-control" name="direccion" required>
				</div>
				<div class="form-group">
					<label for="correo">Correo</label>
					<input type="email" class="form-control" name="correo" required>
				</div>
				<div class="form-group">
					<label for="telefono">Telefono</label>
					<input type="number" class="form-control" name="telefono" required>
				</div>
				<input type="submit" class="btn btn-primary">
				<a href="#" class="btn btn-danger">Cancelar</a>
				</form>

			</div>
		</div>
	</div>


    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Ing. Web 2016</p>
                    <a href="https://www.amazon.com.mx">Amazon</a><br>
                    <a href="http://www.mercadolibre.com.mx/">Mercado Libre</a><br>
                    <a href="http://www.ebay.com/bhp/mexico">E-bay</a><br>
                    <a href="https://mx.aliexpress.com/">Aliexpress</a><br>
                    <a href="http://spanish.alibaba.com/">Alibaba</a><br>
                    <a href="http://www.gearbest.com/">GearBest</a>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>