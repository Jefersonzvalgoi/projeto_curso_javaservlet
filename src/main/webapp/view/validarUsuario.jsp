<%@ page import="model.Usuario"%>
<%
	Usuario usuarioLogado = null; 
	if(session.getAttribute("usuarioAut")!= null){
		usuarioLogado = (Usuario) session.getAttribute("usuarioAut");
	}else{
		response.sendRedirect("index.jsp");
	}
%>