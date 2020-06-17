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
		<h2>Cadastro de Placa-mãe</h2>

		<form action="cadastroBanco.jsp" method="POST">
			<div class="form-group">
				<label for="nome">Nome: </label> <input type="text"
					class="form-control" name="nome">
			</div>
			<div class="form-group">
				<label for="socket">Soquete de CPU: </label> <input type="text"
					class="form-control" name="socket">
			</div>
			<div class="form-group">
				<label for="formFactor">Formato: </label> <input type="text"
					class="form-control" name="formFactor">
			</div>
			<div class="form-group">
				<label for="ramSlots">Slots de RAM: </label> <input type="text"
					class="form-control" name="ramSlots">
			</div>
			<div class="form-group">
				<label for="maxRam">RAM máxima: </label> <input type="text"
					class="form-control" name="maxRam">
			</div>
			<div class="form-group">
				<label for="price">Preço: </label> <input type="text"
					class="form-control" name="price">
			</div>

			<div class="form-group">
				<div class="form-group">
					<button type="submit" class="btn btn-default">Cadastrar</button>
					<input type="hidden" name="opcao" value="mobo" />
				</div>
			</div>
		</form>
		<button id="voltar" type="button" class="btn btn-default"
			onclick="goBack()">Voltar</button>
	</div>

</body>
</html>