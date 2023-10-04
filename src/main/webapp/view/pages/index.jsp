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
<link rel="stylesheet" href="../estilo-css/index.css">
</head>
<body>
	<%@include file="./components/menu.jsp"%>
	<nav>
		<span>Início</span>
	</nav>
	<main>
		<section>
			<h1>Reformas & manutenções em geral</h1>
			<p>
				Procurando um profissional para fazer aquela reforma desejada? Aqui
				na <b>Marido de Aluguel</b> você encontra os melhores profissionais
				para os mais variados serviços de manutenções e reformas, com <b>eficiência
					qualidade e economia.</b>
			</p>
		</section>
		<section>
			<div class="card_seta">
				<!-- card seta para baixo -->
				<div>
					<h2>Mural de Serviços</h2>
					<p>Veja em nosso mural as solicitações de serviços disponíveis!
					</p>
				</div>
				<div class="seta"></div>
			</div>
			<div>
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
			</div>
		</section>
		<section>
			<h2>Principais serviços de Reformas & Manutenções realizados</h2>
		</section>
		<section class="section_cards">
			<section class="card">
				<div id="img_pedreiro"></div>
				<h2>Pedreiro e Alvenaria</h2>
				<p>Saiba mais sobre os serviços de pedreiro Alvenaria e todo
					tipo de reformas.</p>
				<a href="#" class="btn-site"> Solicite um orçamento </a>
			</section>
			<section class="card">
				<div id="img_hidraulica"></div>
				<h2>Encanador e Hidráulica</h2>
				<p>Buscando encanador? Nós podemos te ajudar em qualquer serviço
					hidráulico.</p>
				<a href="#" class="btn-site"> Solicite um orçamento </a>
			</section>
			</section>
			<section class="section_cards">
			<section class="card">
				<div id="img_eletrica"></div>
				<h2>Eletricista</h2>
				<p>Buscando eletricista? Nós podemos te ajudar em qualquer
					serviço elétrico.</p>
				<a href="#" class="btn-site"> Solicite um orçamento </a>
			</section>
		</section>
	</main>
	<%@include file="./components/footer.jsp"%>
</body>
<script type="text/javascript" src="../js/index.js"></script>
</html>