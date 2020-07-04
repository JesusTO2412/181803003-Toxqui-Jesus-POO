<%-- 
    Document   : eliminarUsuario
    Created on : 19 jun. 2020, 22:49:51
    Author     : Jesus
--%>
<%@page import="Dao.Usuario"%>
<%@page import="java.sql.*"%>
<%@page import="Conf.Conexion"%>
<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String nomUsuario;
    UsuarioBD usuario = new UsuarioBD();
    nomUsuario=usuario.eliminarUsuario(new Usuario(Integer.parseInt(request.getParameter("id"))));
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <div class="container text-center"><br>
            <% 
                out.print("<div class='alert alert-danger' role='alert'>");
                    out.println("¿Estas seguro de eliminar a "+nomUsuario+"?");
                out.print("</div> "); 
            %>

            <a href="index.jsp" type="button" class="btn btn-success btn-lg">Cancelar</a>
            <a href="eliminarUsuario2.jsp?id=<%=request.getParameter("id")%>" type="button" class="btn btn-warning btn-lg">Eliminar</a>
        </div>
    </body>
</html>


