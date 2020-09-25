<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Create</title>
	</head>
	<body>
		<form action="executes/create_execute.jsp" method="post">
			<!--<label>ID: </label><br />
			<input type="text" name="id_aluno" /><br /> -->
			
			<label>Nome: </label><br />
			<input type="text" name="nome" /><br />
			
			<label>Idade: </label><br />
			<input type="text" name="idade" /><br />
			
			<button type="submit"> Adicionar Aluno </button>
		</form>
	</body>
</html>