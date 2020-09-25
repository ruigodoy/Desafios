<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="model.Aluno" %>
<%@ page import="dao.AlunoDAO" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Create</title>
	</head>
	<body>
		<%
		try{
			Aluno aluno = new Aluno();
			AlunoDAO alunoD = new AlunoDAO();
			if(request.getParameter("nome").equals("") || request.getParameter("idade").equals("")){
				response.sendRedirect("../index.jsp");
			}else{
				aluno.setNome(request.getParameter("nome"));
				aluno.setIdade(Integer.parseInt(request.getParameter("idade")));
				aluno.setId_aluno(Integer.parseInt(request.getParameter("id_aluno")));
					
				alunoD.alterar(aluno);
				response.sendRedirect("../index.jsp");
			}
		}catch(Exception erro){
			throw new RuntimeException("update.jsp error: " + erro);
		}
		%>
	</body>
</html>