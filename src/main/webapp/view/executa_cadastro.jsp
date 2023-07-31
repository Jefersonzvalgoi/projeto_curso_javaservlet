<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="model.Usuario, controller.UsuarioDao"%>
	<%
	Usuario usuario = new Usuario();
	UsuarioDao dao = new UsuarioDao();
	Usuario usuarioAut = new Usuario();
	try {
		if (request.getParameter("nome").equals("") || request.getParameter("fone").equals("")
		|| request.getParameter("email").equals("")) {
			response.sendRedirect("cadastro.jsp");
		} else {
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setTelefone(request.getParameter("fone"));
			usuario.setSenha(request.getParameter("senha"));
			dao.inserirUsuario(usuario);
			usuarioAut = dao.logar(request.getParameter("email"),request.getParameter("senha"));
			session.setAttribute("usuarioAut", usuarioAut);
			response.sendRedirect("home.jsp");
		}
	} catch (Exception erro1) {
		out.print("Erro na base. " + erro1);
	}
	%>
</body>
</html>