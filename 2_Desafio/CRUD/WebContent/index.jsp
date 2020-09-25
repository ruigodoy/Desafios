<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="model.Aluno" %>
<%@ page import="dao.AlunoDAO" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>CRUD - Aluno</title>
		<style type="text/css">@import url("css/style.css"); </style>
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	</head>
	<body>
		<div class="container">
			<a href="pages/create.jsp" class="button">Adicionar novo Aluno</a>	
			<%
				try{
					out.print("<table>");
					out.print("<tr>");
					out.print("<th>ID</th><th>Nome</th><th>Idade</th><th>Editar</th><th>Excluir</th>");
					out.print("</tr>");
					AlunoDAO alunoD = new AlunoDAO();
						ArrayList<Aluno> alunos = alunoD.getAllAlunos();
						for(int i = 0; i < alunos.size(); i++){
							out.print("<tr>");
							out.print("<td>" + alunos.get(i).getId_aluno() + "</td>");
							out.print("<td>" + alunos.get(i).getNome() + "</td>");
							out.print("<td>" + alunos.get(i).getIdade() + "</td>");
							
							out.print("<td><a class='fas fa-user-edit' href='pages/update.jsp?id_aluno=" 
										+ alunos.get(i).getId_aluno() 
										+ "&nome=" + alunos.get(i).getNome()
										+ "&idade=" + alunos.get(i).getIdade()
										+ "'></a></td>");
							
							out.print("<td><a class='fas fa-times' href='pages/delete.jsp?id_aluno=" 
									+ alunos.get(i).getId_aluno() 
									+ "&nome=" + alunos.get(i).getNome()
									+ "'></a></td>");
							
							out.print("</tr>");
					}
					out.print("</table>");
				}catch(Exception erro){
					out.print("index.jsp error: " + erro);
				}
			%>
		</div>
	</body>
	
	
</html>