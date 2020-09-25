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
				String resposta = "";
				resposta = "../pages/create.jsp";
				request.setAttribute("erroCreate", "Nome e Idade não podem ser Vazio!");
				RequestDispatcher rd = request.getRequestDispatcher(resposta);
				rd.forward(request, response);
			}else{
				aluno.setNome(request.getParameter("nome"));
				aluno.setIdade(Integer.parseInt(request.getParameter("idade")));
				alunoD.inserir(aluno);
				String resposta = "";
				resposta = "../pages/create.jsp";
				request.setAttribute("sucessCreate", "Aluno adicionado com sucesso!");
				RequestDispatcher rd = request.getRequestDispatcher(resposta);
				rd.forward(request, response);
			}
		}catch(Exception erro){
				throw new RuntimeException("create.jsp error: " + erro);
			}
		%>
		
		
	</body>
</html>