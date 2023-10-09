<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marido de Aluguel - Cadastro</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
<link rel="stylesheet" href="../estilo-css/log_cad.css">
</head>
<body>
<%@include file="./components/menu.jsp"%>
	<nav>
		<span>
			<a href="../index.jsp">Inicio</a>
		</span>
		<span>></span>
		<span>
			<a href="login.jsp">Login</a>
		</span>
		<span>></span>
		<span>Cadastro</span>
	</nav>
	<main>
		<section>
			<img alt="Logo do Site" src="../img/logo.png">
			<article>
				<form action="../executa_cadastro.jsp" method="post">
				<h1>Marido de Aluguel</h1>
				<span>Manutenções em geral</span>
					<div class="box-user">
						<span>Email</span> 
						<input type="text" name="email" autofocus>
						<span>Senha</span> 
						<input type="password" name="senha"> 
						<span>Nome</span> 
						<input type="text" name="nome">
						<span>Telefone</span> 
						<input type="text" name="fone" class="phone"> 
					</div>
					<button type="submit" class="btn-site">Cadastrar</button>
				</form>
			</article>
		</section>
	</main>
	<%@include file="./components/footer.jsp"%>
	<script>
		$('.phone').mask('(00)00000-0000');
	</script>
	<script type="text/javascript" src="../js/site.js"></script>
</body>
</html>