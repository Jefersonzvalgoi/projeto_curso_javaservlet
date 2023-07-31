<%@page import="java.util.ArrayList"%>
<%@page import="controller.SolicitacaoDao"%>
<%@page import="model.Solicitacao"%>
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
			<table border="1">
			<tr> 
				<th>Id Solicitação</th>
				<th>Descrição</th>
				<th>Data</th>
			</tr>
			<%
			Solicitacao solicitacao = new Solicitacao();
			SolicitacaoDao dao = new SolicitacaoDao();
			//if (request.getParameter("pesquisa") == "" || request.getParameter("pesquisa") == null) {
				ArrayList<Solicitacao> lista = dao.getListarPorUsuario(usuarioLogado.getId());
				for (int cont = 0; cont < lista.size(); cont++) {
					out.println("<tr>");
					out.println("<td>" + lista.get(cont).getId() + "</td>");
					out.println("<td>" + lista.get(cont).getDescricao() + "</td>");
					out.println("<td>" + lista.get(cont).getData() + "</td>");
					out.println("<td class='delete'><a href='executaDeleteSolicitacao.jsp?id=" 
							+ lista.get(cont).getId()+"'><img src='./img/trash3.svg'></a></td>");
					/* out.println("<td class='edit'><a href = 'update.jsp?id=" 
					+ listar.get(cont).getMatricula() 
					+ "&nome="+listar.get(cont).getNome()
					+ "&cpf="+listar.get(cont).getCpf()
					+ "&telefone="+listar.get(cont).getTelefone()
					+ "&email="+listar.get(cont).getEmail()
					+"'><img src='./img/pencil-square.svg'></a></td>");
					out.println("<td class='delete'><a href='delete.jsp?id=" 
							+ listar.get(cont).getMatricula() 
							+ "&nome="+listar.get(cont).getNome()+"'><img src='./img/trash3.svg'></a></td>"); */
					out.println("<tr>");
// 				}
// 			} else {
// 				ArrayList<Aluno> listar = dao.pesquisa(request.getParameter("pesquisa"));
// 				for (int cont = 0; cont < listar.size(); cont++) {
// 					out.println("<tr>");
// 					out.println("<td>" + listar.get(cont).getMatricula() + "</td>");
// 					out.println("<td>" + listar.get(cont).getNome() + "</td>");
// 					out.println("<td>" + listar.get(cont).getCpf() + "</td>");
// 					out.println("<td>" + listar.get(cont).getTelefone() + "</td>");
// 					out.println("<td>" + listar.get(cont).getEmail() + "</td>");
// 					out.println("<td class='edit'><a href = 'update.jsp?id=" 
// 					+ listar.get(cont).getMatricula() 
// 					+ "&nome="+listar.get(cont).getNome()
// 					+ "&cpf="+listar.get(cont).getCpf()
// 					+ "&telefone="+listar.get(cont).getTelefone()
// 					+ "&email="+listar.get(cont).getEmail()
// 					+"'><img src='./img/pencil-square.svg'></a></td>");
// 					out.println("<td class='delete'><a href='delete.jsp?id=" 
// 							+ listar.get(cont).getMatricula() 
// 							+ "&nome="+listar.get(cont).getNome()+"'><img src='./img/trash3.svg'></a></td>");					
// 					out.println("<tr>");
// 				}
			}
			%>
		</table>


		</div>
		<div class="esquerda">
			<%@ include file="botoes.jsp"%>
		</div>
	</section>
</body>
</html>