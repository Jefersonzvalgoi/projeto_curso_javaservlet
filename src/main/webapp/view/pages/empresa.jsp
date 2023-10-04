<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marido de Aluguel - Empresa</title>
<link rel="stylesheet" href="../estilo-css/empresa.css">
</head>
<body>
	<%@include file="./components/menu.jsp" %>
	<nav>
		<span>
			<a href="index.jsp">Inicio</a>
		</span>
		<span>></span>
		<span>Empresa</span>
	</nav>
	<main>
		<section>
			<h2>Nossa Empresa</h2>
			<p>Nossa empresa foi pensada pra você pois muitas pessoas hoje, 
			por falta de tempo ou até mesmo por não saberem fazer determinada 
			manutenção na sua casa, procuram profissionais para fazer serviços 
			simples e rápidos.</p>
		</section>
		<section>
			<h2>Nosso Objetivo</h2>
			<p>Nossa objetivo é facilitar o seu contato com os mais variados 
			profissionais para fazer desde aquela simples troca de lâmpada, 
			ate uma reforma completa em sua casa.</p>
		</section>
	</main>
	<%@include file="./components/footer.jsp"%>
</body>
<script type="text/javascript" src="../js/index.js"></script>
</html>