<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
<title>Lista de Alunos</title>
<link rel="icon" href="icon/student02.png" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<a href="aluControll?action=formAddAluno" class="botaoNovo">New</a>
	
<!-- 	Form que faz a busca por nome -->
	<form action="aluControll" method="get">
		<input type="text"   name="nome"  class="caixa1"/>
		<input type="submit" name="action" value="search" class="botaoSalvar"/>
	</form>
	
	<table id=tabela1>
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>Idade</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${findByNameAluno}" var="aluno">
				<tr>
					<td>${aluno.idAluno}</td>
					<td>${aluno.nome}</td>
					<td>${aluno.idade}</td>
					<td>
						<a href="aluControll?action=formUpdateAluno&idAluno=${aluno.idAluno}" class="botaoEditar">Edit</a> ||
						<a href="aluControll?action=deleteAluno&idAluno=${aluno.idAluno}" class="botaoExcluir">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>