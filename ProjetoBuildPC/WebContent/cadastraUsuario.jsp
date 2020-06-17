<!DOCTYPE html>
<html lang="en">
<head>
<title>Cadastro</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>Cadastro de Usuário</h2>

		<form role="form" action="LoginController">
			<div class="form-group">
				<label for="usr">Name:</label> <input type="text"
					class="form-control" id="usr">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd">
			</div>
			<div class="form-group">
				<div class="form-group">
					<button type="submit" class="btn btn-default">Cadastrar</button>
					<input type="hidden" name="opcao" value="CadastraUsuario" />

				</div>
			</div>

		</form>
	</div>

</body>
</html>

