<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    boolean querySuccess=true;
    UsuarioBD usuario = new UsuarioBD();
    querySuccess=usuario.actualizarUsuario(new Usuario(Integer.parseInt(request.getParameter("idUsuario")),request.getParameter("usuario"), Integer.parseInt(request.getParameter("edad"))));  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <div class="container text-center"><br>
            <%if(querySuccess){%>
                <div class="alert alert-success" role="alert">
                    Se actualizo el registro exitosamente a la base de datos!
                </div>
            <%}else{%>
                <div class="alert alert-danger" role="alert">
                    No se actualizo el registro :(
                </div>
            <%}%>
            <a href="index.jsp" type="button" class="btn btn-success btn-lg">Volver al Index</a>
            <a href="formularioUsuario.jsp" type="button" class="btn btn-secondary btn-lg">Agregar nuevo usuario</a>
        </div>
    </body>
</html>

