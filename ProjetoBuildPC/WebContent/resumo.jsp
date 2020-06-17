<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<title>Resumo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
	function goBack() {
		window.history.back();
	}
</script>

<script type="text/javascript">
	function printpage() {

		var printButton = document.getElementById("imprime");
		var botaoVoltar = document.getElementById("voltar");
		printButton.style.visibility = 'hidden';
		botaoVoltar.style.visibility = "hidden";
		window.print();
		printButton.style.visibility = 'visible';
		botaoVoltar.style.visibility = 'visible';
	}
</script>

<jsp:useBean id="mobo" class="br.edu.ufabc.buildpc.dao.MotherboardDAO" />
<jsp:useBean id="cpu" class="br.edu.ufabc.buildpc.dao.CpuDAO" />
<jsp:useBean id="gpu" class="br.edu.ufabc.buildpc.dao.GpuDAO" />
<jsp:useBean id="ram" class="br.edu.ufabc.buildpc.dao.RamDAO" />
<jsp:useBean id="armazenamento"
	class="br.edu.ufabc.buildpc.dao.ArmazenamentoDAO" />
<jsp:useBean id="psu" class="br.edu.ufabc.buildpc.dao.PsuDAO" />
<jsp:useBean id="gabinete" class="br.edu.ufabc.buildpc.dao.GabineteDAO" />

<c:set var="idMobo" value="${param.mobo}" />
<c:set var="idCpu" value="${param.cpu}" />
<c:set var="idGpu" value="${param.gpu}" />
<c:set var="idRam" value="${param.ram}" />
<c:set var="idArmazenamento" value="${param.armazenamento}" />
<c:set var="idPsu" value="${param.psu}" />
<c:set var="idGabinete" value="${param.gabinete}" />

<fmt:setLocale value="pt-BR" />

<c:set var="valorFinal" value="0.00" />

</head>
<body>



	<div class="container">
		<h2>Resumo</h2>
		<c:out value="${param.moboPreco}" />
		<p>Aqui está a configuração que você escolheu:</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Componente</th>
					<th>Modelo</th>
					<th>Preço</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Motherboard</td>
					<c:forEach var="mobo" items="${mobo.lista}">
						<c:if test="${mobo.idMotherboard == idMobo}">
							<c:set var="moboNome" value="${mobo.nome}" />
							<c:set var="moboPrice" value="${mobo.price}" />
							<c:set var="valorFinal" value="${valorFinal + moboPrice}" />
						</c:if>
					</c:forEach>
					<td><b> <c:out value="${moboNome}" />
					</b></td>
					<td><fmt:formatNumber value="${moboPrice}"
							minFractionDigits="2" type="currency" /></td>
				</tr>
				<tr>
					<td>CPU</td>
					<c:forEach var="cpu" items="${cpu.lista}">
						<c:if test="${cpu.idCpu == idCpu}">
							<c:set var="cpuNome" value="${cpu.nome}" />
							<c:set var="cpuPrice" value="${cpu.price}" />
							<c:set var="valorFinal" value="${valorFinal + cpuPrice}" />
						</c:if>
					</c:forEach>
					<td><b> <c:out value="${cpuNome}" />
					</b></td>
					<td><fmt:formatNumber value="${cpuPrice}"
							minFractionDigits="2" type="currency" /></td>
				</tr>
				<tr>
					<td>GPU</td>
					<c:forEach var="gpu" items="${gpu.lista}">
						<c:if test="${gpu.idGpu == idGpu}">
							<c:set var="gpuNome" value="${gpu.nome}" />
							<c:set var="gpuPrice" value="${gpu.price}" />
							<c:set var="valorFinal" value="${valorFinal + gpuPrice}" />
						</c:if>
					</c:forEach>
					<td><b><c:out value="${gpuNome}" /></b></td>
					<td><fmt:formatNumber value="${gpuPrice}"
							minFractionDigits="2" type="currency" /></td>
				</tr>
				<tr>
					<td>RAM</td>
					<c:forEach var="ram" items="${ram.lista}">
						<c:if test="${ram.idRam == idRam}">
							<c:set var="ramNome" value="${ram.nome}" />
							<c:set var="ramPrice" value="${ram.price}" />
							<c:set var="valorFinal" value="${valorFinal + ramPrice}" />
						</c:if>
					</c:forEach>
					<td><b><c:out value="${ramNome}" /></b></td>
					<td><fmt:formatNumber value="${ramPrice}"
							minFractionDigits="2" type="currency" /></td>
				</tr>
				<tr>
					<td>Armazenamento</td>
					<c:forEach var="armazenamento" items="${armazenamento.lista}">
						<c:if test="${armazenamento.idArmazenamento == idArmazenamento}">
							<c:set var="armazenamentoNome" value="${armazenamento.nome}" />
							<c:set var="armazenamentoPrice" value="${armazenamento.price}" />
							<c:set var="valorFinal"
								value="${valorFinal + armazenamentoPrice}" />
						</c:if>
					</c:forEach>
					<td><b><c:out value="${armazenamentoNome}" /></b></td>
					<td><fmt:formatNumber value="${armazenamentoPrice}"
							minFractionDigits="2" type="currency" /></td>
				</tr>
				<tr>
					<td>PSU</td>
					<c:forEach var="psu" items="${psu.lista}">
						<c:if test="${psu.idPsu == idPsu}">
							<c:set var="psuNome" value="${psu.nome}" />
							<c:set var="psuPrice" value="${psu.price}" />
							<c:set var="valorFinal" value="${valorFinal + psuPrice}" />
						</c:if>
					</c:forEach>
					<td><b><c:out value="${psuNome}" /></b></td>
					<td><fmt:formatNumber value="${psuPrice}"
							minFractionDigits="2" type="currency" /></td>
				</tr>
				<tr>
					<td>Gabinete</td>
					<c:forEach var="gabinete" items="${gabinete.lista}">
						<c:if test="${gabinete.idGabinete == idGabinete}">
							<c:set var="gabineteNome" value="${gabinete.nome}" />
							<c:set var="gabinetePrice" value="${gabinete.price}" />
							<c:set var="valorFinal" value="${valorFinal + gabinetePrice}" />
						</c:if>
					</c:forEach>
					<td><b><c:out value="${gabineteNome}" /></b></td>
					<td><fmt:formatNumber value="${gabinetePrice}"
							minFractionDigits="2" type="currency" /></td>
				</tr>
				<tr>
					<td>Total:</td>
					<td>- - - - - - - - - - - - - -</td>
					<td><fmt:formatNumber value="${valorFinal}"
							minFractionDigits="2" type="currency" /></td>

				</tr>
			</tbody>
		</table>
		<button id="imprime" type="button" class="btn btn-default"
			onclick="printpage()">Imprimir</button>
		<button id="voltar" type="button" class="btn btn-default"
			onclick="goBack()">Voltar</button>
	</div>




</body>
</html>