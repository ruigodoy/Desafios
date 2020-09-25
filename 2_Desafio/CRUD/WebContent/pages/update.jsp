<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Update</title>
		<style type="text/css">@import url("../css/style.css"); </style>
	</head>
	<body>
		<form action="../executes/update_execute.jsp" method="post">
			<label>ID: </label><br />
			<input type="text" name="id_aluno" value="<%=request.getParameter("id_aluno")%>" /><br />
			
			<label>Nome: </label><br />
			<input type="text" name="nome" value="<%=request.getParameter("nome")%>" /><br />
			
			<label>Idade: </label><br />
			<input type="text" name="idade" value="<%=request.getParameter("idade")%>"  /><br />
			
			<button type="submit" class="button"> Alterar Aluno </button>
		</form>
	</body>
</html>