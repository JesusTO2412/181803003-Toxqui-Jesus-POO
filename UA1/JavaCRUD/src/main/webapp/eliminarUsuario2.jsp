<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    boolean querySuccess;
    UsuarioBD usuario = new UsuarioBD();
    querySuccess=usuario.eliminarUsuario2(new Usuario(Integer.parseInt(request.getParameter("id"))));

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <div class="container text-center"><br>
            <%if(querySuccess){   
                out.print("<div class='alert alert-danger' role='alert'>");
                    out.println("Usuario Eliminado con exito");
                out.print("</div> "); 
             }else{
                out.print("<div class='alert alert-success' role='alert'>");
                    out.println("Ocurrio un error, el usuario no se pudo insertar");
                out.print("</div> ");
             }
            %>
            <a href="index.jsp" type="button" class="btn btn-success btn-lg">Volver al Index</a>
        </div>
    </body>
</html>  