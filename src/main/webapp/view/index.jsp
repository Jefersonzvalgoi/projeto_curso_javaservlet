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
	<section class="principal">
		<div class="direita">
			<img src="img/projetoweb3.png">
		</div>
		<div class="esquerda">

			<form action="executaLogin.jsp" class="formulario">
				<h1>Marido de Aluguel</h1>
				<h2>Manutenções em geral</h2>
				<div class="box-user">
					<label>Email</label> <input type="text" name="email" autofocus>
				</div>
				<div class="box-user">
					<label>Senha</label> <input type="password" name="senha">
				</div>
				<div class="box-links">
					<a href="cadastro.jsp" class="conta">Criar conta!</a> <a href="#"
						class="esqueceu">Esqueceu a senha?</a>
				</div>
				<%
				String erro = request.getParameter("erro");
				if (erro != null) {
					if (erro.equals("USUARIO_NAO_EXISTE")) {
				%>
				Usuario não existe!
				<%
				}
				}
				%>

				<input type="submit" value="Entrar" class="btn">
			</form>
		</div>
	</section>
</body>
</html>