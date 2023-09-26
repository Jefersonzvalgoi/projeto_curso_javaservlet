<%@page import="java.util.ArrayList"%>
<%@page import="controller.SolicitacaoDao"%>
<%@page import="model.Solicitacao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marido de Aluguel</title>
<link rel="stylesheet" href="../estilo-css/style.css">
</head>
<body>
	<header>
		<a href="#">
			<img alt="Menu do site" src="../img/menu.png">
		</a>
		<img alt="Logo do site" src="../img/logo.png">
		<a href="#" class="btn-solic">
			<b>Solicite um orçamento</b>
		</a>
	</header>
	<nav>
		<span>Início</span>
	</nav>
	<main>
		<section>
		<h1>Reformas & manutenções em geral</h1>
		<p>
			Procurando um profissional para fazer aquela reforma desejada? 
			Aqui na Marido de Aluguel você encontra os melhores profissionais 
			para os mais variados serviços de manutenções e reformas, 
			com eficiência qualidade e economia.
		</p>
		</section>
		<section>
			<div><!-- card seta para baixo -->
				<div>
					<h2>Mural de Serviços</h2>
					<p>
						Veja em nosso mural as solicitações de serviços disponíveis!
					</p>
				</div>
				<div></div>
			</div>
		</section>
		<section >
			<h2>Mural de serviços</h2>
			<div>
				<table>
				<tr>
					<th>Solicitante</th>
					<th>Descrição</th>
				</tr>
				<%
					Solicitacao solicitacao = new Solicitacao();
					SolicitacaoDao dao = new SolicitacaoDao();
					//if (request.getParameter("pesquisa") == "" || request.getParameter("pesquisa") == null) {
						ArrayList<Solicitacao> lista = dao.getListar();
						for (int cont = 0; cont < lista.size(); cont++) {
							out.println("<tr>");
							out.println("<td>" + lista.get(cont).getNomeSolicitante() + "</td>");							
							out.println("<td>" + lista.get(cont).getDescricao() + "</td>");
							out.println("<tr>");
					}
				%>
				</table>
			</div>
		</section>
		<section>
			<h2>Principais serviços de Reformas & Manutenções realizados</h2>
		</section>
		<section class="card">
			<div></div>
			<h2>Pedreiro e Alvenaria</h2>
			<p>Saiba mais sobre os serviços de pedreiro Alvenaria e todo tipo de reformas.</p>
			<a href="#" class="btn-solic">
				<b>Solicite um orçamento</b>
			</a>
		</section>
		<section class="card">
			<div></div>
			<h2>Encanador e Hidráulica</h2>
			<p>Buscando encanador? Nós podemos te ajudar em qualquer serviço hidráulico.</p>
			<a href="#" class="btn-solic">
				<b>Solicite um orçamento</b>
			</a>
		</section>
		<section class="card">
			<div></div>
			<h2>Eletricista</h2>
			<p>Buscando eletricista? Nós podemos te ajudar em qualquer serviço elétrico.</p>
			<a href="#" class="btn-solic">
				<b>Solicite um orçamento</b>
			</a>		
		</section>
	</main>
	<footer>
		<a href="#">home</a>
		<a href="#">serviços</a>
		<a href="#">empresa</a>
		<a href="#">sou profissional</a>
		<p>&copy; Desenvolvido por Jeferson Valgoi - 2023</p>
	</footer>
</body>
</html>