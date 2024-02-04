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
	<div>
		<h1>Novo Carro</h1>
	<div class="container mt-3">
		<h1 class="text-center mt-5">Aula2 - POO</h1>
		<nav class="mt-5 mb-3">
			<%@include file="./menu.jsp"%>
		</nav>
	</div>
	
		<main class="mt-5">
		<form action="gravarCarro.jsp" method="post">
	
			<label for="placa" class="form-label">Informe placa do carro</label>
			<input id="placa" class="form-control" type="text" placeholder="Informe placa do carro" name="placa">
			
			<label for="modelo" class="form-label">Informe modelo do carro</label>
			<input id="modelo" class="form-control" type="text" placeholder="Informe modelo do carro" name="modelo">
			
			<input onClick="onSubmit()" type="button" class="btn btn-outline-primary mt-3" value="Gravar">
			
			
		</form>
		</main>
	</div>
	<script>
		function onSubmit(){
			let inputPlaca = document.getElementById("placa")
			if(inputPlaca.value == ''){
				alert("A placa deve ser informada!")
				inputPlaca.focus()
				return
			}
			
			let inputModelo = document.getElementById("modelo")
			if(inputModelo.value == ''){
				alert("A modelo deve ser informado!")
				inputModelo.focus()
				return
			}
			document.getElementById
		}
	
	</script>
</body>
</html>