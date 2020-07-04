<%-- 
    Document   : formularioPassUsuario
    Created on : 19 jun. 2020, 9:57:53
    Author     : Jesus
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/floating-labels.css">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="form-group">             
                <form class="form-signin" action="editarPassUsuario.jsp" method="post">
                    <div class="text-center mb-4">
                        <img class="mb-4 rounded-circle" src="user.png" alt="" width="150">
                        <h1 class="h3 mb-3 font-weight-normal">Cambiar contraseña</h1><br>  
                    </div>
                    <input type="hidden" name="id" value="<%=request.getParameter("id")%>" />  
                    <div class="form-label-group">
                        <input type="password" name="oldPass" class="form-control" required placeholder="Contraseña Actual"/> 
                        <label>Contraseña Actual</label>
                    </div>
                    <div class="form-label-group">
                        <input type="password" name="newPass" class="form-control" required placeholder="Contraseña Nueva"/> 
                        <label>Contraseña Nueva</label>
                    </div>
                    <div class="form-label-group">
                        <input type="password" name="newPass2" class="form-control" required placeholder="Confirmar Contraseña"/> 
                        <label>Confirmar Contraseña</label>
                    </div>
                    <br><input type="submit" value="Enviar" class="btn btn-success btn-block"/>
                    <input type="reset" value="Limpiar" class="btn btn-outline-success btn-block"/>
                </form>
            </div>
        </div>
    </body>
</html>
