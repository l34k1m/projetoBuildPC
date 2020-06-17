<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<title>Cadastro de componentes</title>
</head>
<body>

	<div class="container">
		<h2>Cadastro de Componentes</h2>

		<p>Clique no componente que deseja cadastrar</p>
		<a href="cadastraMobo.jsp" class="btn btn-primary btn-block"> Placa-mãe </a> <br><br>
		<a href="cadastraCpu.jsp" class="btn btn-primary btn-block"> CPU </a><br><br>
		<a href="cadastraGpu.jsp" class="btn btn-primary btn-block"> GPU </a><br><br>
		<a href="cadastraRam.jsp" class="btn btn-primary btn-block"> RAM </a><br><br>
		<a href="cadastraArmazenamento.jsp" class="btn btn-primary btn-block"> Armazenamento </a><br><br>
		<a href="cadastraPsu.jsp" class="btn btn-primary btn-block"> PSU </a><br><br>
		<a href="cadastraGabinete.jsp"class="btn btn-primary btn-block" > Gabinete</a>
	</div>
</body>
</html>