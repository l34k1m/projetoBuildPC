<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de componente</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	
</script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
	
</script>
<script>
	function goBack() {
		window.history.back();
	}
</script>
</head>

<body>

	<div class="container">
		<h2>Cadastro de PSU</h2>

		<form action="cadastroBanco.jsp" method="POST">
			<div class="form-group">
				<label for="nome">Nome: </label> <input type="text"
					class="form-control" name="nome">
			</div>
			<div class="form-group">
				<label for="potencia">Potência: </label> <input type="text"
					class="form-control" name="potencia">
			</div>
			<div class="form-group">
				<label for="padrao">Padrão: </label> <input type="text"
					class="form-control" name="padrao">
			</div>
			<div class="eightyPlus">
				<label for="eightyPlus">Certificação 80 Plus: </label> <input
					type="text" class="form-control" name="eightyPlus">
			</div>
			<div class="form-group">
				<label for="modular">Modular: </label> <input type="text"
					class="form-control" name="modular">
			</div>
			<div class="form-group">
				<label for="price">Preço: </label> <input type="text"
					class="form-control" name="price">
			</div>

			<div class="form-group">
				<div class="form-group">
					<button type="submit" class="btn btn-default">Cadastrar</button>
					<input type="hidden" name="opcao" value="psu" />
				</div>
			</div>
			<button id="voltar" type="button" class="btn btn-default"
				onclick="goBack()">Voltar</button>
		</form>
	</div>

</body>
</html>