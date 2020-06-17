<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<title>Monte seu PC!</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<style>
body {
	background-color: #000000; /* Preto*/
}
.jumbotron {
	background-color: #1f1f7a; /* Roxo*/
	color: #ffffff;
}
</style>

<body>

	<div class="container">
		<div class="jumbotron">
			<h1>Monte seu PC!</h1>
			<p>P�gina dedicada a personaliza��o de um Desktop. Selecione a
				op��o Montador abaixo para personalizar seu PC de acordo com as
				pe�as que voc� deseja. H� diversas op��es de Processadores, Placas
				de V�deo, Discos, etc. em nosso cat�logo. Ao final geraremos um
				resumo de sua configura��o com uma expectativa de pre�o de acordo
				com lojas especializadas.</p>

			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					Selecione a op��o <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="montador.jsp">Montador</a></li>
					<li><a href="cadastraComponente.jsp">Cadastrar componente</a></li>
				</ul>
			</div>

		</div>
		<p><font color="#ffffff"> Projeto de Programa��o para WEB desenvolvido por Felipe e
			Mikael.</font></p> 
	</div>

</body>
</html>