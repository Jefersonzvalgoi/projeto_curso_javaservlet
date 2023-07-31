<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="estilo-css/Style.css">
<meta charset="UTF-8">
<title>Marido de Aluguel</title>
</head>
<body>
	<%@ include file="validarUsuario.jsp"%>
	<nav class="navbar">
		<div class="logo">
			<h1>Marido de Aluguel</h1>
			<h2>Manutenções em geral</h2>
		</div>
		<div class="menu">
			<a href="encerraSessao.jsp">Sair</a>
			<a href="#">Serviços</a> <a href="#">Profissional</a> <a href="perfil.jsp">Perfil</a>
			<a href="home.jsp" id="btn-menu">Home</a>
		</div>
	</nav>
	<section class="principal">
		<div class="direita-home">
			<form action="executaInserirSolicitacao.jsp" method="post">
				<label>Descrição da solicitação</label><br>
				<textarea rows=5 cols=25 name="descricao" ></textarea><br>
				<button type="submit">Salvar</button>
			</form>
		</div>
		<div class="esquerda">
			<%@ include file="botoes.jsp"%>
		</div>
	</section>
</body>
</html>