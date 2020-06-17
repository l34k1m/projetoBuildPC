<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrando componente...</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	
</script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	
</script>
<script>
	function goBack() {
		window.history.back();
	}
</script>

<%@ page import="br.edu.ufabc.buildpc.modelo.Motherboard"%>
<%@ page import="br.edu.ufabc.buildpc.dao.MotherboardDAO"%>
<%@ page import="br.edu.ufabc.buildpc.modelo.Cpu"%>
<%@ page import="br.edu.ufabc.buildpc.dao.CpuDAO"%>
<%@ page import="br.edu.ufabc.buildpc.modelo.Gpu"%>
<%@ page import="br.edu.ufabc.buildpc.dao.GpuDAO"%>
<%@ page import="br.edu.ufabc.buildpc.modelo.Ram"%>
<%@ page import="br.edu.ufabc.buildpc.dao.RamDAO"%>
<%@ page import="br.edu.ufabc.buildpc.modelo.Armazenamento"%>
<%@ page import="br.edu.ufabc.buildpc.dao.ArmazenamentoDAO"%>
<%@ page import="br.edu.ufabc.buildpc.modelo.Psu"%>
<%@ page import="br.edu.ufabc.buildpc.dao.PsuDAO"%>
<%@ page import="br.edu.ufabc.buildpc.modelo.Gabinete"%>
<%@ page import="br.edu.ufabc.buildpc.dao.GabineteDAO"%>

</head>
<body>

	<c:choose>
		<c:when test="${param.opcao == 'mobo'}">
			<%
				Motherboard mobo = new Motherboard();
						mobo.setNome(request.getParameter("nome"));
						mobo.setSocket(request.getParameter("socket"));
						mobo.setFormFactor(request.getParameter("formFactor"));
						mobo.setRamSlots(Integer.parseInt(request.getParameter("ramSlots")));
						mobo.setMaxRam(request.getParameter("maxRam"));
						mobo.setPrice(Float.parseFloat(request.getParameter("price")));
						MotherboardDAO dao = new MotherboardDAO();
						dao.insere(mobo);
			%>
		</c:when>
		<c:when test="${param.opcao == 'cpu'}">
			<%
				Cpu cpu = new Cpu();
						cpu.setNome(request.getParameter("nome"));
						cpu.setSpeed(request.getParameter("speed"));
						cpu.setSocket(request.getParameter("socket"));
						cpu.setCores(Long.parseLong(request.getParameter("cores")));
						cpu.setTdp(request.getParameter("tdp"));
						cpu.setPrice(Float.parseFloat(request.getParameter("price")));
						CpuDAO dao = new CpuDAO();
						dao.insere(cpu);
			%>
		</c:when>
		<c:when test="${param.opcao == 'gpu'}">
			<%
				Gpu gpu = new Gpu();
						gpu.setNome(request.getParameter("nome"));
						gpu.setChipset(request.getParameter("chipset"));
						gpu.setMemoria(request.getParameter("memoria"));
						gpu.setClock(request.getParameter("clock"));
						gpu.setPrice(Float.parseFloat(request.getParameter("price")));
						GpuDAO dao = new GpuDAO();
						dao.insere(gpu);
			%>
		</c:when>
		<c:when test="${param.opcao == 'ram'}">
			<%
				Ram ram = new Ram();
						ram.setNome(request.getParameter("nome"));
						ram.setSpeed(request.getParameter("speed"));
						ram.setTipo(request.getParameter("tipo"));
						ram.setModulos(request.getParameter("modulos"));
						ram.setTamanho(request.getParameter("tamanho"));
						ram.setPrice(Float.parseFloat(request.getParameter("price")));
						RamDAO dao = new RamDAO();
						dao.insere(ram);
			%>
		</c:when>
		<c:when test="${param.opcao == 'armazenamento'}">
			<%
				Armazenamento armazenamento = new Armazenamento();
						armazenamento.setNome(request.getParameter("nome"));
						armazenamento.setFormato(request.getParameter("formato"));
						armazenamento.setTipo(request.getParameter("tipo"));
						armazenamento.setCapacidade(request.getParameter("capacidade"));
						armazenamento.setCache(request.getParameter("cache"));
						armazenamento.setPrice(Float.parseFloat(request.getParameter("price")));
						ArmazenamentoDAO dao = new ArmazenamentoDAO();
						dao.insere(armazenamento);
			%>
		</c:when>
		<c:when test="${param.opcao == 'psu'}">
			<%
				Psu psu = new Psu();
						psu.setNome(request.getParameter("nome"));
						psu.setPotencia(request.getParameter("potencia"));
						psu.setPadrao(request.getParameter("padrao"));
						psu.setEightyPlus(request.getParameter("eightyPlus"));
						psu.setModular(request.getParameter("modular"));
						psu.setPrice(Float.parseFloat(request.getParameter("price")));
						PsuDAO dao = new PsuDAO();
						dao.insere(psu);
			%>
		</c:when>
		<c:when test="${param.opcao == 'gabinete'}">
			<%
				Gabinete gabinete = new Gabinete();
						gabinete.setNome(request.getParameter("nome"));
						gabinete.setClasse(request.getParameter("classe"));
						gabinete.setMoboPadrao(request.getParameter("moboPadrao"));
						gabinete.setSlotWater(request.getParameter("slotWater"));
						gabinete.setAcrilico(request.getParameter("acrilico"));
						gabinete.setConexoes(request.getParameter("conexoes"));
						gabinete.setPrice(Float.parseFloat(request.getParameter("price")));
						GabineteDAO dao = new GabineteDAO();
						dao.insere(gabinete);
			%>
		</c:when>
	</c:choose>

	<p>Cadastrado com sucesso...</p>

	<button id="voltar" type="button" class="btn btn-default"
		onclick="goBack()">Voltar</button>
</body>
</html>