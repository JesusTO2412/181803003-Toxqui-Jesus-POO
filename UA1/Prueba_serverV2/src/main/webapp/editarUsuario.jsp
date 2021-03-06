<%-- 
    Document   : editarUsuaro
    Created on : 19 jun. 2020, 9:05:59
    Author     : Jesus
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
        stmt = conexion.prepareStatement("UPDATE usuario SET usuario=?, edad=? WHERE id_usuario=?");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setString(2, request.getParameter("edad"));
        stmt.setInt(3, Integer.parseInt(request.getParameter("idUsuario")));
        stmt.executeUpdate();   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <div class="container text-center"><br>
            <%}catch(SQLException e){%>    
                <div class="alert alert-danger" role="alert">
                    <%out.println("Error: "+e.getMessage());%>
                </div>  
            <%}%>
            <div class="alert alert-success" role="alert">
                Se edito el registro exitosamente a la base de datos!
            </div>
            <a href="index.jsp" type="button" class="btn btn-success btn-lg">Volver al Index</a>
            <a href="formularioUsuario.jsp" type="button" class="btn btn-secondary btn-lg">Agregar nuevo usuario</a>
        </div>
    </body>
</html>

