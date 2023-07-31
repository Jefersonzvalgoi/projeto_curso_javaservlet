<%@ page import="model.Usuario, controller.UsuarioDao"%>
<%@ include file="validarUsuario.jsp"%>
<%
	Usuario usuario = new Usuario();
	UsuarioDao dao = new UsuarioDao();
	usuario.setId(usuarioLogado.getId());
	usuario.setNome(request.getParameter("nome"));
	usuario.setEmail(request.getParameter("email"));
	usuario.setTelefone(request.getParameter("telefone"));
	usuario.setSenha(request.getParameter("senha"));
	dao.updateUsuario(usuario);
	
	session.setAttribute("usuarioAut", usuario);
	
	response.sendRedirect("perfil.jsp?id="+usuarioLogado.getId());
%>