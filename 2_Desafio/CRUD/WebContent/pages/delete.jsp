<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Delete</title>
	</head>
	<body>
		<form action="../executes/delete_execute.jsp" method="post">
			<label>ID: </label><br />
			<input type="text" name="id_aluno" value="<%=request.getParameter("id_aluno")%>" /><br />
			
			<label>Nome: </label><br />
			<input type="text" name="nome" value="<%=request.getParameter("nome")%>" /><br />
			
			<button type="submit"> Excluir Aluno </button>
		</form>
	</body>
</html>