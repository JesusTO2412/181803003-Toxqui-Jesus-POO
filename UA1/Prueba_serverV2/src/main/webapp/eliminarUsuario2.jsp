<%-- 
    Document   : eliminarUsuario2
    Created on : 19 jun. 2020, 23:01:12
    Author     : Jesus
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    int id = Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
        stmt = conexion.prepareStatement("DELETE FROM usuario WHERE id_usuario=?");
        stmt.setInt(1, id);
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
            <% 
                out.print("<div class='alert alert-success' role='alert'>");
                    out.println("Usuario Eliminado con exito");
                out.print("</div> "); 
            %>

            <a href="index.jsp" type="button" class="btn btn-success btn-lg">Volver al Index</a>
        </div>
    </body>
</html>
<%}catch(SQLException e){%>    
    <div class="alert alert-danger" role="alert">
        <%out.println("Error: "+e.getMessage());%>
    </div>  
<%}%>



        