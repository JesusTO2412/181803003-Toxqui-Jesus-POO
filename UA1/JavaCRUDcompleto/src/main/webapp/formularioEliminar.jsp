<%-- 
    Document   : eliminarUsuario
    Created on : 19/06/2020, 09:52:46 AM
    Author     : Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String nomUser = request.getParameter("usuario");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminar Usuario</title>
    </head>
    <body>
        <h1 style="background-color:red;">ATENCIÓN</h1>
        <h3><div class="alert alert-danger" role="alert"/>¿Seguro que lo quieres eliminar a: <%out.print(nomUser);%>?</h3>
        <div class="container">
            <form action="eliminarUsuario.jsp" method="POST">
                <table>
                    <tr>
                        <td><a class="btn btn-danger btn-block" href="index.jsp">Cancelar</a></td>
                        <td><a  class="btn btn-success btn-block" href="eliminarUsuario.jsp?id=<%out.print(id);%>">Eliminar</a></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
<body>

