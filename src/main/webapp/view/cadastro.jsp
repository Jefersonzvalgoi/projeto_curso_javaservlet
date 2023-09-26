<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<link rel="stylesheet" href="estilo-css/Style.css">
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
<title>Marido de Aluguel</title>
</head>
<body>
	<section class="principal">
		<div class="direita">
			<img src="img/projetoweb3.png">
		</div>
		<div class="esquerda">
			<form action="executa_cadastro.jsp" class="formulario" method="post">
				<h1>Marido de Aluguel</h1>
				<h2>Manutenções em geral</h2>
				<h2>Cadastro de usuário</h2>
				<div class="box-user">
					<label>Email</label> <input type="text" name="email" autofocus>
				</div>
				<div class="box-user">
					<label>Senha</label> <input class="senha" type="password"  name="senha">
				</div>
				<div class="box-user">
					<label>Nome</label> <input type="text" name="nome">
				</div>
				<div class="box-user">
					<label>Telefone</label> <input type="text" name="fone" class="phone">
				</div>
				<input type="submit" value="cadastrar" class="btn">
			</form>
			<script>
				$('.phone').mask('(00)00000-0000');
			</script>
		</div>
	</section>
</body>
</html>