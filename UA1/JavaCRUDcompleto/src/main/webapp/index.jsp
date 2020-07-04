<%-- 
    Document   : index
    Created on : 30/05/2020, 05:13:09 PM
    Author     : Pc
--%>
<%@page import="Dac.Usuario"%>
<%@page import="Dac.UsuarioDB"%>
<%@page import="config.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Update Usuario</title>
    </head>
    <body>
    </body>
    <%
        List<Usuario> usuarios = new UsuarioDB().listadoUsuarios();
    %><br><br> <div class="container">
        <table>
            <h3 style="text-align:center;color:black">TABLA: Usuarios</h3>
            <tr>
                <td colspan="2"><h2>Usuarios</h2></td>
                <td><a  class="btn btn-success btn-block" href="formularioUsuario.jsp">Agregar Usuario</a></td>
            </tr>
            <table  class="table table-hover">
                <thead  class="thead-dark">
                <th scope="col">ID</th>
                <th scope="col">Nombre</th>
                <th scope="col">Edad en años</th>
                <th scope="col">Contraseña</th>
                </thead>
                <%
                   for(Usuario usuario:usuarios){
                %>
                <tr>
                    <td scope="row"><%= usuario.getId_usuario()%></td>
                    <td scope="row"><%= usuario.getUsuario()%></td>
                    <td scope="row"><%= usuario.getEdad()%></td>
                    <td scope="row"><%= usuario.getPassword()%></td>
                    <td><a  class="btn btn-warning btn-block" href="formularioUsuario.jsp?id=<%= usuario.getId_usuario()%>">Editar Usuario</a></td>
                    <td><a  class="btn btn-warning btn-block" href="formularioPassword.jsp?&id=<%= usuario.getId_usuario()%>">Editar Password</a></td>
                    <td><a  class="btn btn-danger btn-block" href="formularioEliminar.jsp?id=<%= usuario.getId_usuario()%>&usuario=<%= usuario.getUsuario()%>">Eliminar Usuario</a></td>
                    <td><a  class="btn btn-danger btn-block" href="eliminarUsuariov2.jsp?id=<%= usuario.getId_usuario()%>">Eliminar Usuario Directamente</a></td>
                </tr>
                <%}%>
            </table>
    </div>  <br><br>
</html>



