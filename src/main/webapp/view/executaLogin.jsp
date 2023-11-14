<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validação</title>
</head>
<body>
	<%@ page import="model.Usuario, controller.UsuarioDao"%>
	<%
	Usuario usuario = new Usuario();
	UsuarioDao dao = new UsuarioDao();
	try {
		if (request.getParameter("email").equals("") || request.getParameter("senha").equals("")) {
			response.sendRedirect("pages/login.jsp");
		} else {
			usuario = dao.logar(request.getParameter("email"), request.getParameter("senha"));
			if (usuario.getId() == 0) {
				response.sendRedirect("pages/login.jsp?erro=USUARIO_NAO_EXISTE");
			} else {
		session.setAttribute("usuarioAut", usuario);
		response.sendRedirect("home.jsp");
			}
		}

	} catch (Exception erro1) {
		out.print("Erro na base. " + erro1);
	}
	%>
</body>
</html>