<%-- 
    Document   : eliminarUsuario2
    Created on : 19 jun. 2020, 23:01:12
    Author     : Jesus
--%>
<%@page import="Dao.Usuario"%>
<%@page import="java.sql.*"%>
<%@page import="Conf.Conexion"%>
<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    UsuarioBD usuario = new UsuarioBD();
    usuario.eliminarUsuario2(new Usuario(Integer.parseInt(request.getParameter("id")))); 
    
    response.sendRedirect("index.jsp");
    

%>
