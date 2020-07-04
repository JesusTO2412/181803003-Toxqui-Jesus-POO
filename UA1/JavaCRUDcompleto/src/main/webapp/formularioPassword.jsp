<%-- 
    Document   : formularioPassword
    Created on : 19/06/2020, 09:50:18 AM
    Author     : Pc
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String passActual=request.getParameter("pass");
    int id=Integer.parseInt(request.getParameter("id"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Modificar Contraseña</title>
    </head>
    <body>
        <div class="container">
            <h1>Modificar Contraseña</h1>
            <form action="editarPassword.jsp" method="POST">
                <div class="form-row">
                    <div class="col">
                        <label for="C1">Ingresa tu contraseña Actual</label>
                        <input class="form-control" id="C1" type="password" placeholder="Ingresa tu contraseña actual" name="passA" required/>
                        <br><br>
                        <label for="C2">Ingresa la nueva contraseña: </label>
                        <input class="form-control" id="C2" type="password" placeholder="Ingresa la nueva contraseña" name="pass1" required/>
                        <br><br>
                         <label for="C3">Vuelve a ingresar la nueva contraseña:</label>
                        <input class="form-control" id="C3" type="password" placeholder="Ingresa la nueva contraseña" name="pass2" required/>
                        <br><br>
                        
                        <input class="form-control" type="hidden" placeholder="Id" name="id" value="<%out.print(id);%>" required/>
                        <br><br>
                        <input class="btn btn-success btn-block" type="submit" value="Modificar"/>
                    </div><br><br>
                </div>
            </form>
        </div>
    </body>
</html>