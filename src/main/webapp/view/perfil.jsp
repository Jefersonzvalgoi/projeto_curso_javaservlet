<%@page import="java.util.ArrayList"%>
<%@page import="controller.UsuarioDao"%>
<%@page import="model.Usuario"%>
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
			<a href="#">Serviços</a> <a href="#">Profissional</a> <a href="minhaSolicitacao.jsp">Minhas solicitações</a>
			<a href="home.jsp" id="btn-menu">Home</a>
		</div>
	</nav>
	<section class="principal">
		<div class="direita-home">
			<%
				Usuario usuario = null;
				Usuario usuarioSet = usuarioLogado;
				UsuarioDao dao = new UsuarioDao();
				String id = request.getParameter("id");
				if (id != null) {
					usuario = dao.buscarPorId(id);
					usuarioSet = usuario;
				}
			%>
			<form action="executaUpdate.jsp" method="post">
				<label>Codigo do usuario</label><br> 
				<label><%=usuarioSet.getId()%></label><br> 
				<label>Nome</label><br>
				<input type="text" name="nome" value="<%=usuarioSet.getNome()%>"><br>
				<label>Email</label><br> <input type="text" name="email"
					value="<%=usuarioSet.getEmail()%>" class="email"><br>
				<label>Telefone</label><br> <input type="text" name="telefone"
					value="<%=usuarioSet.getTelefone()%>" class="phone"><br>
				<label>Senha</label><br> <input type="text" name="senha"
					value="<%=usuarioSet.getSenha()%>"><br>
				<button type="submit">Atualiza</button>
			</form>


		</div>
		<div class="esquerda">
			<%@ include file="botoes.jsp"%>
		</div>
	</section>
</body>
</html>