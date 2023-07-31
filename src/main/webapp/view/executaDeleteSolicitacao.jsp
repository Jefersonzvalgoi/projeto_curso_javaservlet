<%@ page import="controller.SolicitacaoDao" %>
<%
	SolicitacaoDao dao = new SolicitacaoDao();
	dao.deletar(Integer.parseInt(request.getParameter("id")));
	response.sendRedirect("minhaSolicitacao.jsp");
%>