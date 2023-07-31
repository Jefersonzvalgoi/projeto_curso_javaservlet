<%@ page import="model.Solicitacao, controller.SolicitacaoDao"%>
<%@ include file="validarUsuario.jsp"%>
	<%
	Solicitacao solicitacao = new Solicitacao();
	SolicitacaoDao dao = new SolicitacaoDao();
	
	try {
		if (request.getParameter("descricao").equals("")){
			response.sendRedirect("solicitacao.jsp");
		} else {
			dao.inserirSolicitacao(usuarioLogado.getId(), request.getParameter("descricao"));
			
			response.sendRedirect("listaSolicitacao.jsp");
		}
	} catch (Exception erro1) {
		out.print("Erro na base. " + erro1);
	}
	%>