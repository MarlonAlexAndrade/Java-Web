<%@page import="dao.CarroDAO"%>
<%@page import="classes.Carro"%>

<%@page import="utils.Conexao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Carro</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
	<%
		String idCarro = request.getParameter("id");
		Carro carro = CarroDAO.consultarPorId(Integer.parseInt(idCarro));
	%>
	<div>
		<h1>Novo Carro</h1>
	<div class="container mt-3">
		<h1 class="text-center mt-5">Aula2 - POO</h1>
		<nav class="mt-5 mb-3">
			<%@include file="./menu.jsp"%>
		</nav>
	</div>
	
		<main class="mt-5">
		<form action="gravarCarro.jsp" method="put">
			<label class="form-label">Informe Id do carro</label>
			<input class="form-control" type="text" value=<%= idCarro %> name="id">
			
			<label class="form-label">Informe placa do carro</label>
			<input class="form-control" type="text" value=<%= carro.getPlaca() %> placeholder="Informe placa do carro" name="placa">
			
			<label class="form-label">Informe modelo do carro</label>
			<input class="form-control" type="text" value=<%= carro.getModelo() %> placeholder="Informe modelo do carro" name="modelo">
			
			<button class="btn btn-outline-primary mt-3" type="submit">Gravar</button>
		</form>
		</main>
	</div>
</body>
</html>