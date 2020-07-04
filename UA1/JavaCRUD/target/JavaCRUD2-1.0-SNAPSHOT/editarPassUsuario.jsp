<%@page import="Dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Error="Se edito el registro exitosamente a la base de datos!";
    boolean ExistError=false;
    boolean querySuccess;
    
    UsuarioBD usuario = new UsuarioBD();
    querySuccess=usuario.editarPassword(new Usuario(Integer.parseInt(request.getParameter("id")), request.getParameter("oldPass")));
    
    if(querySuccess){
        if(request.getParameter("newPass").equals(request.getParameter("newPass2"))){
            usuario.actualizarPassword(new Usuario(Integer.parseInt(request.getParameter("id")), request.getParameter("newPass")));     
        }else{
            ExistError=true;
            Error="Porfavor, verifica que las contraseñas nuevas coincidan";
        }
    }else{
        ExistError=true;
        Error="La contraseña no coincide con la del usuario";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <div class="container text-center"><br>    
            <%if(ExistError){   
                out.print("<div class='alert alert-danger' role='alert'>");
                    out.println(Error);
                out.print("</div> "); 
             }else{
                out.print("<div class='alert alert-success' role='alert'>");
                    out.println(Error);
                out.print("</div> ");
             }
            %>
            <a href="index.jsp" type="button" class="btn btn-success btn-lg">Volver al Index</a>
            <a href="formularioPassUsuario.jsp?id=<%=request.getParameter("id")%>" type="button" class="btn btn-secondary btn-lg">Intentar nuevamente</a>
        </div>
    </body>
</html>
