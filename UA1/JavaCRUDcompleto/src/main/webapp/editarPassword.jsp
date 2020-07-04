<%-- 
    Document   : editarPassword
    Created on : 19/06/2020, 06:51:21 PM
    Author     : Pc
--%>
<%@page import="org.apache.commons.codec.digest.DigestUtils;"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int id=0;
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    if(request.getParameter("pass1").equals(request.getParameter("pass2"))){
          try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
         stmt = conexion.prepareStatement("UPDATE usuarios SET password=md5(?) WHERE id_usuario="+request.getParameter("id"));
        stmt.setString(1, request.getParameter("pass1"));
        stmt.executeUpdate();
        %><h1 style="background-color:lightblue;">Se ha editado correctamente el password</h1><%
        } catch (SQLException e) {
        out.print(e.getMessage());
        }
    }else{
        %><h1 style="background-color:red;">No pudo ser editado correctamente el password: Las contraseñas no coinciden</h1><%
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminar usuario</title>
    </head>
    <body>
            <a class="btn btn-success btn-block" href="index.jsp">Volver a la ventana de inicio</a>
    </body>
</html>
<%    
%>

