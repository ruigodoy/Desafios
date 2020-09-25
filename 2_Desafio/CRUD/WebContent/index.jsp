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
	</head>
	<body>
		<form action="index.jsp" method="post">
			<label>Nome: </label> <br />
			<input type="text" name="nome" /> <br />
			
			<button type="submit"> Procurar </button>
		</form>
		
		<%
			try{
				out.print("<table>");
				
				out.print("<tr>");
				
				out.print("<th>ID</th><th>Nome</th><th>Idade</th><th>Editar</th><th>Excluir</th>");
				AlunoDAO alunoD = new AlunoDAO();
				if(request.getParameter("nome") == "" || request.getParameter("nome") == null){
					ArrayList<Aluno> alunos = alunoD.getAllAlunos();
					for(int i = 0; i < alunos.size(); i++){
						out.print("<tr>");
						out.print("<td>" + alunos.get(i).getId_aluno() + "</td>");
						out.print("<td>" + alunos.get(i).getNome() + "</td>");
						out.print("<td>" + alunos.get(i).getIdade() + "</td>");
						
						out.print("<td><a href='update.jsp?id_aluno=" 
									+ alunos.get(i).getId_aluno() 
									+ "&nome=" + alunos.get(i).getNome()
									+ "&idade=" + alunos.get(i).getIdade()
									+ "'>Editar</a></td>");
						
						out.print("<td><a href='delete.jsp?id_aluno=" 
								+ alunos.get(i).getId_aluno() 
								+ "&nome=" + alunos.get(i).getNome()
								+ "'>Excluir</a></td>");
						
						out.print("</tr>");
					}
				}else{
					ArrayList<Aluno> alunos = alunoD.getAllAlunosByName(request.getParameter("nome"));
					for(int i = 0; i < alunos.size(); i++){
						out.print("<tr>");
						out.print("<td>" + alunos.get(i).getId_aluno() + "</td>");
						out.print("<td>" + alunos.get(i).getNome() + "</td>");
						out.print("<td>" + alunos.get(i).getIdade() + "</td>");
						
						out.print("<td><a href='update.jsp?id_aluno=" 
									+ alunos.get(i).getId_aluno() 
									+ "&nome=" + alunos.get(i).getNome()
									+ "&idade=" + alunos.get(i).getIdade()
									+ "'>Editar</a></td>");
						
						out.print("<td><a href='delete.jsp?id_aluno=" 
								+ alunos.get(i).getId_aluno() 
								+ "&nome=" + alunos.get(i).getNome()
								+ "'>Excluir</a></td>");
						
						out.print("</tr>");
					
					}
				}
				
				out.print("</tr>");
				
				out.print("</table>");
			}catch(Exception erro){
				out.print(erro);
			}
		
		
		
		%>
	</body>
</html>