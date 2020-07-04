<%-- 
    Document   : agregarUsuario
    Created on : 12/06/2020, 09:18:02 AM
    Author     : Pc
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("INSERT INTO usuarios SET usuario=?, Edad=? , password=MD5(?)");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setString(2, request.getParameter("edad"));
        stmt.setString(3, request.getParameter("password"));
        switch (stmt.executeUpdate()) {
            case 0:%>
                <h1 style="background-color:red;">No pudo ser creado correctamente el usuario</h1>
            <%break;
            case 1:%>
                <h1 style="background-color:lightblue;">Se ha creado correctamente el usuario</h1>
            <%break;
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar usuario</title>
    </head>
    <body>
            <a class="btn btn-success btn-block" href="index.jsp">Volver a la ventana de inicio</a>
    </body>
</html>
<%    } catch (SQLException e) {
        out.print(e.getMessage());
    }
%>
