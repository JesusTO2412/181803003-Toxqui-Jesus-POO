<%-- 
    Document   : index
    Created on : 29 may. 2020, 8:58:32
    Author     : Jesus
    Posibles errores de zona horaria y solucion:
        SET GLOBAL time_zone = '+3:00'; -> consulta sql
        ?serverTimezone=UTC -> al final de la base de datos
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
        stmt = conexion.prepareStatement("Select * from usuario");
        rs = stmt.executeQuery();
%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Usuarios - bootstrap4</title>
    </head>
    <body>   
        <div class="container">
            <h2>Los registros de la base de datos son:</h2><br>
            <table class="table table-hover">
                <thead class="thead-dark">
                    <tr class="text-center">
                        <td colspan="4"><h2>Usuarios</h2></td>
                        <td colspan="2"><a class="btn btn-success btn-lg" href="formularioUsuario.jsp">Agregar usuario</a></td>
                    </tr>
                    <tr class="text-center">
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Contraseña</th>
                        <th colspan="3">Acciones</th>
                    </tr>
                    </thead>
                <tbody>
                <%while(rs.next()){%>
                    <tr>
                        <th><%=rs.getInt("id_usuario")%></th>
                        <td><%=rs.getString("usuario")%></td>
                        <td><%=rs.getString("password")%></td>
                        <td><a class="btn btn-warning" href="formularioUsuario.jsp?id=<%=rs.getInt("id_usuario")%>">Editar Usuario</a></td>
                        <td><a class="btn btn-warning" href="formularioPassUsuario.jsp?id=<%=rs.getInt("id_usuario")%>">Editar contraseña</a></td>
                        <td><a class="btn btn-danger" href="">Eliminar Usuario</a></td>
                    </tr>  
                <%}%>
                </tbody>
            </table> 
            <%}catch(SQLException e){
                out.println("Error: " + e.getMessage());
            }%>
        </div> 
    </body>
</html>
