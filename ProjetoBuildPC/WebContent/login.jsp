<!DOCTYPE html>
<html lang="pt-BR">
<head>
<title>Login</title>
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
		<h2>Login no Sistema</h2>
		<form class="form-horizontal" role="form" action="LoginController">
			<div class="form-group">
				<label class="control-label col-sm-2" for="usr">Usuário:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="usr"
						placeholder="Digite o usuário">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Senha:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pwd"
						placeholder="Digite a senha">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label><input type="checkbox"> Lembrar</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Entrar</button>
					<input type="hidden" name="opcao" value="LoginUsuario" /> <a
						href="#" class="btn btn-info" role="button">Não é cadastrado?
						Clique aqui.</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>