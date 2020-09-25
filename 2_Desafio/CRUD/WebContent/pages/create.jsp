<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Create</title>
		<style type="text/css">@import url("../css/style.css"); </style>
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	</head>
	<body>
		<a href="../index.jsp" class="fas fa-arrow-left"> Voltar</a>
		<form action="../executes/create_execute.jsp" method="post">
			<label>Nome </label><br />
			<input type="text" name="nome" /><br />
			
			<label>Idade </label><br />
			<input type="text" name="idade" /><br />
			
			
			<button type="submit" class="button"> Adicionar Aluno </button>
		</form>
		<%
			String erro = (String) request.getAttribute("erroCreate");
			String sucess = (String) request.getAttribute("sucessCreate");
			
			if(erro != null){
				out.print(erro + " <i class='fas fa-times-circle'></i>");
			}

			if(sucess != null){
				out.print(sucess + " <i class='fas fa-check'></i>");
			}
		%>
	</body>
</html>