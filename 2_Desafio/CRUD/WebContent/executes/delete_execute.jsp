<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.AlunoDAO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Delete</title>
	</head>
	<body>
		<%
		try{
			AlunoDAO alunoD = new AlunoDAO();
			alunoD.deletar(Integer.parseInt(request.getParameter("id_aluno")));
			response.sendRedirect("../index.jsp");
		}catch(Exception erro){
			throw new RuntimeException("delete.jsp error: " + erro);
		}
		%>
	</body>
</html>