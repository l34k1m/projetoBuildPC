<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<title>Montador</title>
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

	<jsp:useBean id="mobo" class="br.edu.ufabc.buildpc.dao.MotherboardDAO" />
	<jsp:useBean id="cpu" class="br.edu.ufabc.buildpc.dao.CpuDAO" />
	<jsp:useBean id="gpu" class="br.edu.ufabc.buildpc.dao.GpuDAO" />
	<jsp:useBean id="ram" class="br.edu.ufabc.buildpc.dao.RamDAO" />
	<jsp:useBean id="armazenamento"
		class="br.edu.ufabc.buildpc.dao.ArmazenamentoDAO" />
	<jsp:useBean id="psu" class="br.edu.ufabc.buildpc.dao.PsuDAO" />
	<jsp:useBean id="gabinete" class="br.edu.ufabc.buildpc.dao.GabineteDAO" />

	<div class="container">
		<h2>Monte seu PC!</h2>

		<p>Escolha em cada tabela seu processador, quantidade de Memória
			RAM e Placa de Vídeo preferidos</p>
		<br>

		<form action="resumo.jsp" method="POST">
			<div id="mobo">
				<p>Motherboard</p>
				<select name="mobo" class="form-control" id="sel1">
					<option value="" disabled selected>Escolha Placa-Mãe</option>
					<c:forEach var="mobo" items="${mobo.lista}">
						<option value="${mobo.idMotherboard}">Nome:
							${mobo.nome} (soquete: ${mobo.socket}; RAM máxima:
							${mobo.maxRam})</option>
					</c:forEach>
				</select>
			</div>
			<br />
			<div id="cpu">
				<p>CPU</p>
				<select name="cpu" class="form-control" id="sel1">
					<option value="" disabled selected>Escolha CPU</option>
					<c:forEach var="cpu" items="${cpu.lista}">
						<option value="${cpu.idCpu}">Nome:
							${cpu.nome} (clock: ${cpu.speed}; número de núcleos:
							${cpu.cores})</option>

					</c:forEach>
				</select>
			</div>
			<br />
			<div id="gpu">
				<p>GPU</p>
				<select name="gpu" class="form-control" id="sel1">
					<option value="" disabled selected>Escolha GPU</option>
					<c:forEach var="gpu" items="${gpu.lista}">

						<option value="${gpu.idGpu}">Nome: ${gpu.nome} (memória:
							${gpu.memoria}; clock da GPU: ${gpu.clock})</option>
					</c:forEach>
				</select>
			</div>
			<br />
			<div id="ram">
				<p>RAM</p>
				<select name="ram" class="form-control" id="sel1">
					<option value="" disabled selected>Escolha RAM</option>
					<c:forEach var="ram" items="${ram.lista}">
						<option value="${ram.idRam}">Nome: ${ram.nome} (clock:
							${ram.speed}; tipo: ${ram.tipo}; capacidade: ${ram.tamanho})</option>
					</c:forEach>
				</select>
			</div>
			<br />
			<div id="armazenamento">
				<p>Armazenamento</p>
				<select name="armazenamento" class="form-control" id="sel1">
					<option value="" disabled selected>Escolha Armazenamento</option>
					<c:forEach var="armazenamento" items="${armazenamento.lista}">

						<option value="${armazenamento.idArmazenamento}">Nome:
							${armazenamento.nome} (capacidade: ${armazenamento.capacidade};
							tipo:${armazenamento.tipo})</option>
					</c:forEach>
				</select>
			</div>
			<br />
			<div id="psu">
				<p>PSU</p>
				<select name="psu" class="form-control" id="sel1">
					<option value="" disabled selected>Escolha Fonte</option>
					<c:forEach var="psu" items="${psu.lista}">

						<option value="${psu.idPsu}">Nome: ${psu.nome} (potência:
							${psu.potencia}; modular: ${psu.modular})</option>
					</c:forEach>
				</select>
			</div>
			<br />
			<div id="gabinete">
				<p>Gabinete</p>
				<select name="gabinete" class="form-control" id="sel1">
					<option value="" disabled selected>Escolha Gabinete</option>
					<c:forEach var="gabinete" items="${gabinete.lista}">

						<option value="${gabinete.idGabinete}">Nome:
							${gabinete.nome} (classe: ${gabinete.classe}; espaço para
							ventoinha: ${gabinete.slotWater})</option>
					</c:forEach>
				</select>
			</div>

			<br /> <input type="submit" class="btn btn-info" value="Enviar">
		</form>
	</div>
</body>
</html>