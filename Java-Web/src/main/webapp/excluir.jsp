<%@page import="dao.CarroDAO"%>
<%@page import="classes.Carro"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String idCarro = request.getParameter("id");
		Carro carro = CarroDAO.consultarPorId(Integer.parseInt(idCarro));
		response.sendRedirect("./consulta.jsp");
	%>
</body>
</html>