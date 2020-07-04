<%-- 
    Document   : index
    Created on : 29 may. 2020, 8:58:32
    Author     : Jesus
    Posibles errores de zona horaria y solucion:
        SET GLOBAL time_zone = '+3:00'; -> consulta sql
        ?serverTimezone=UTC -> al final de la base de datos
--%>

<%@page import="java.util.*"%>
<%@page import="Dao.Usuario"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="Conf.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Usuarios - bootstrap4</title>
    </head>
    <body>  
    <%
        List<Usuario> usuarios = new UsuarioBD().listadoUsuarios();
    %>
        <div class="container">
            <table class="table table-hover">
                <thead class="thead-dark">
                    <tr class="text-center">
                        <td colspan="6"><h2>Usuarios</h2></td>
                        <td colspan="2"><a class="btn btn-success btn-lg" href="formularioUsuario.jsp">Agregar usuario</a></td>
                    </tr>
                    <tr class="text-center">
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Contraseña</th>
                        <th>edad</th>
                        <th colspan="4">Acciones</th>
                    </tr>
                    </thead>
                <tbody>
                <%for (Usuario usuario:usuarios){%>
                    <tr>
                        <th><%=usuario.getId_usuario()%></th>
                        <td><%=usuario.getUsuario()%></td>
                        <td><%=usuario.getPassword()%></td>
                        <td><%=usuario.getEdad()%></td>
                        <td><a class="btn btn-warning btn-sm" href="formularioUsuario.jsp?id=<%=usuario.getId_usuario()%>">Editar Usuario</a></td>
                        <td><a class="btn btn-warning btn-sm" href="formularioPassUsuario.jsp?id=<%=usuario.getId_usuario()%>">Editar contraseña</a></td>
                        <td><a class="btn btn-danger btn-sm" href="eliminarUsuario.jsp?id=<%=usuario.getId_usuario()%>">Eliminar Usuario</a></td>
                        <td><a class="btn btn-danger btn-sm" href="eliminarUsuarioV2.jsp?id=<%=usuario.getId_usuario()%>">Eliminar Usuario v2</a></td>
                    </tr>  
                <%}%>
                </tbody>
            </table> 
        </div> 
    </body>
</html>
