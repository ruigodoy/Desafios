<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Delete</title>
		<style type="text/css">@import url("../css/style.css"); </style>
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	</head>
	<body>
		<a href="../index.jsp" class="fas fa-arrow-left"> Voltar</a>
		<form action="../executes/delete_execute.jsp" method="post">
			<label>ID </label><br />
			<input type="text" name="id_aluno" style='pointer-events: none;' value="<%=request.getParameter("id_aluno")%>" /><br />
			
			<label>Nome </label><br />
			<input type="text" name="nome" style='pointer-events: none;' value="<%=request.getParameter("nome")%>" /><br />
			
			<button type="submit" class="button"> Excluir Aluno </button>
		</form>
		
		<%
			String sucess = (String) request.getAttribute("sucessDelete");
		
			if(sucess != null){
				out.print(sucess + " <i class='fas fa-check'></i>");
			}
		%>
	</body>
</html>