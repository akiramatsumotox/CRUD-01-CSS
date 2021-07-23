<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Aluno</title>
<link rel="stylesheet" href="css/style.css"/>
<link rel="icon" href="icon/student02.png"/> 
</head>
<body>

	<form action="aluControll" method="post">
		<input type="text" name="idAluno" value="0" readonly="readonly" class="caixa1"/>
		<input type="text" name="nome" autofocus="autofocus" placeholder="Nome..." class="caixa1"/>
		<input type="text" name="idade" placeholder="Idade..." class="caixa1"/>
		<input type="submit" name="save" value="Save" class="botaoSalvar"/>
		<a href="aluControll" class="botaoExcluir">Cancelar</a>
	</form>

</body>
</html>