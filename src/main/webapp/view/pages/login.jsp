<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marido de Aluguel - Login</title>
<link rel="stylesheet" href="../estilo-css/log_cad.css">
</head>
<body>
<%@include file="./components/menu.jsp"%>
	<nav>
		<span>
			<a href="../index.jsp">Inicio</a>
		</span>
		<span>></span>
		<span>Login</span>
	</nav>
	<main>
		<section>
			<img alt="Logo do Site" src="../img/logo.png">
			<article>
				<form action="../executaLogin.jsp">
				<h1>Marido de Aluguel</h1>
				<span>Manutenções em geral</span>
					<div class="box-user">
						<span>Email</span> 
						<input type="text" name="email" autofocus>
						<span>Senha</span> 
						<input type="password" name="senha"> 
						<a href="#">Esqueceu a senha?</a> 
						<a href="cadastro.jsp">Cadastre-se aqui!</a>
					</div>
					<button type="submit" class="btn-site">Entrar</button>
				</form>
			</article>
		</section>
	</main>
	<%@include file="./components/footer.jsp"%>
	<%
				String erro = request.getParameter("erro");
				if (erro != null && erro.equals("USUARIO_NAO_EXISTE")) {
					
				%>
				<script type="text/javascript">
					alert("Usuario não existe!")
				</script>
				<%
				}
	%>
	<script type="text/javascript" src="../js/site.js"></script>
</body>
</html>