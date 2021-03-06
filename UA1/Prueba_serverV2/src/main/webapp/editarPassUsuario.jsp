<%-- 
    Document   : editarPassUsuario
    Created on : 19 jun. 2020, 11:44:54
    Author     : Jesus
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    String Error="Se edito el registro exitosamente a la base de datos!";
    boolean ExistError=false;

    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
        stmt = conexion.prepareStatement("SELECT id_usuario, password FROM usuario WHERE id_usuario=? and password=md5(?)");
        
        stmt.setInt(1, Integer.parseInt(request.getParameter("idUsuario")));
        stmt.setString(2, request.getParameter("oldPass"));
        
        rs = stmt.executeQuery();
  
        if(rs.next()){
        
            if(request.getParameter("newPass").equals(request.getParameter("newPass2"))){
                stmt = conexion.prepareStatement("UPDATE usuario SET password=md5(?) WHERE id_usuario=1000");
                stmt.setString(1, request.getParameter("newPass"));
                stmt.setInt(2, Integer.parseInt(request.getParameter("idUsuario")));
                stmt.executeUpdate();   
            }else{
                ExistError=true;
                Error="Porfavor, verifica que las contraseñas nuevas coincidan";
            }
        }else{
            ExistError=true;
            Error="La contraseña Actual no coincide";
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
            }catch(SQLException e){%>    
                <div class="alert alert-danger" role="alert">
                    <%out.println("Error: "+e.getMessage());%>
                </div>  
            <%}finally{%>
            <a href="index.jsp" type="button" class="btn btn-success btn-lg">Volver al Index</a>
            <a href="formularioPassUsuario.jsp?id=<%=request.getParameter("idUsuario")%>" type="button" class="btn btn-secondary btn-lg">Intentar nuevamente</a>
            <%}%>
        </div>
    </body>
</html>