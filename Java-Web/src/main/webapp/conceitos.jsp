<%@page import="classes.Produto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="classes.Carro" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Aula02 - POO</h1>
	<%
		Carro c1 = new Carro();
		c1.modelo = "fusca";
		c1.placa = "abc-1234";
		out.write("<p>Modelo: " + c1.modelo + " placa: " + c1.placa);
		
		Carro c2 = new Carro();
		c2.modelo = "Kombi";
		c2.placa = "def-2678";
		out.write("<p>Modelo: " + c2.modelo + " placa: " + c2.placa);
		
		Carro c3;//Declara o objeto
		c3 = new Carro();//Constrói uma instancia do objeto
		
		try{
		Produto p1 = new Produto();
		//p1.preco = 10.0;
		p1.setPreco(10.0);
		out.write("<p>"+ p1.getPreco() + "</p>");
		
		//Sobrecarga de construtor
		Produto p2 = new Produto("Milho", -20.0);
		out.write("<p>"+ p2.getDescricao() + " " + p2.getPreco() + "</p>");
		
		}catch(RuntimeException ex){
			out.write("Erro: " + ex.getMessage());
		}
	%>
	
	<form action="post">
		<input type="text" name="modelo">
		<input type="text" name="placa">
		
		<button type="submit">Cadastrar</button>		
	</form>
</body>
</html>