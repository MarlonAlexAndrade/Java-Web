<%@page import="dao.CarroDAO"%>
<%@page import="classes.Carro"%>
<%	
	String id = request.getParameter("id");
	String placa = request.getParameter("placa");
	String modelo = request.getParameter("modelo");
	
	
	if(id != null){
		Carro carro = new Carro(Integer.parseInt(id), placa, modelo);
		if(CarroDAO.alterar(carro)){
			response.sendRedirect("./consulta.jsp");
	}
	}else{
		Carro carro = new Carro(placa, modelo);
		if(CarroDAO.salvar(carro)){
			response.sendRedirect("./consulta.jsp");
	}
	}
	
%>