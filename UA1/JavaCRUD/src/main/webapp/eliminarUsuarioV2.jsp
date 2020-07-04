<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    UsuarioBD usuario = new UsuarioBD();
    usuario.eliminarUsuario2(new Usuario(Integer.parseInt(request.getParameter("id")))); 
    
    response.sendRedirect("index.jsp");
    

%>
