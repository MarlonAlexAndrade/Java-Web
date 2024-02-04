<%@page import="java.util.List"%>
<%@page import="dao.CarroDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="classes.Carro"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consulta Carros</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<div class="container mt-5">
		<h1>Listar Carros</h1>

		<h1 class="text-center mt-5">Aula2 - POO</h1>
		<nav class="mt-5">
			<%@include file="./menu.jsp"%>
		</nav>

		<main class="mt-5">
			<table class="table">
				<thead>
					<tr>
						<th>Id</th>
						<th>Placa</th>
						<th>Modelo</th>
						<th>Ações</th>
					</tr>
				</thead>

				<tbody>
					<%
					List<Carro> carros = CarroDAO.consultar();
					for (int i = 0; i < carros.size(); i++) {
						out.write("<tr>");
						out.write("<td>" + carros.get(i).getId() + "</td>");
						out.write("<td>" + carros.get(i).getPlaca() + "</td>");
						out.write("<td>" + carros.get(i).getModelo() + "</td>");
						out.write("<td><a href='./editarcarro.jsp?id=" + carros.get(i).getId()+"'>Editar</a> &nbsp;&nbsp;");
						out.write("<a href='./excluir.jsp?id=" + carros.get(i).getId()+"'>Excluir</a> </td>");
						out.write("</tr>");
					}
					%>
				</tbody>
			</table>
		</main>
	</div>
</body>
</html>