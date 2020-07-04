<%-- 
    Document   : eliminarUsuario
    Created on : 19/06/2020, 11:09:28 AM
    Author     : Pc
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int id=0;
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("DELETE FROM usuarios WHERE id_usuario="+request.getParameter("id"));
        stmt.executeUpdate();
        response.sendRedirect("index.jsp");
       
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminar usuario</title>
        
    </head>
    <form></form>
    <body>
    </body>
</html>
<%    } catch (SQLException e) {
        out.print(e.getMessage());
    }
%>
