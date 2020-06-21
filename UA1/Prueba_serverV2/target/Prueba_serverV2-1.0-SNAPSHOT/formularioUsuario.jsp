<%-- 
    Document   : formularioUsuario
    Created on : 12 jun. 2020, 8:48:12
    Author     : Jesus
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    int id;
    String iduser="";
    String user="";
    String years="";
    String titulo="Agregar Usuario";
    String action = "agregarUsuario.jsp";
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    if(request.getParameter("id")!=null){
        id = Integer.parseInt(request.getParameter("id"));
        titulo="Editar Usuario";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
            stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=?");
            stmt.setInt(1, id);
            rs=stmt.executeQuery(); 
            
            rs.next();
            iduser = rs.getString("id_usuario");
            user = rs.getString("usuario");
            years = rs.getString("edad");
            action = "editarUsuario.jsp";
             
            
        }catch(SQLException e){
            out.println("Error: "+e.getMessage());
        }      
    }else {
        id=0;
    }
    
%>
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
                <form class="form-signin" action="<%=action%>" method="GET">
                    <%if(request.getParameter("id")!=null){%>
                        <input type="hidden" name="idUsuario" value="<%=id%>" />  
                    <%}%>
                    <div class="text-center mb-4">
                        <img class="mb-4 rounded-circle" src="user.png" alt="" width="150">
                        <h1 class="h3 mb-3 font-weight-normal"><%=titulo%></h1><br>  
                    </div>
                    <div class="form-label-group">
                        <input type="text" name="usuario" value="<%=user%>" class="form-control" placeholder="Nombre Usuario" required/>  
                        <label>Nombre de Usuario</label>
                    </div>
                    <div class="form-label-group">
                        <input type="number" name="edad" value="<%=years%>" class="form-control" placeholder="Edad" required/>  
                        <label>Edad del Usuario</label>
                    </div>
                    <%if(request.getParameter("id")==null){%>
                    <div class="form-label-group">
                        <input type="password" name="pass" class="form-control" required placeholder="contraseña"/> 
                        <label>contraseña</label>
                    </div>
                    <%}%>
                    <br><input type="submit" value="Enviar" class="btn btn-success btn-block"/>
                    <input type="reset" value="Limpiar" class="btn btn-outline-success btn-block"/>
                </form>
            </div>
        </div>
    </body>
</html>
