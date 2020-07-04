<%-- 
    Document   : formularioUsuario.jsp
    Created on : 12/06/2020, 08:50:30 AM
    Author     : Pc
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String titulo="Agregar Usuario", nomUsuario="" , atributo="required", value="enviar", action="agregarUsuario.jsp", type="password";
    int id=0, edad=0;
    if(request.getParameter("id")!= null){
        id=Integer.parseInt(request.getParameter("id"));
        titulo="Modificar usuario";
        atributo="disabled";
        value="Actualizar";   
        action="editarUsuario.jsp";
        type="hidden";
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("SELECT * FROM usuarios WHERE id_usuario=?");
        stmt.setInt(1 , id);
        rs=stmt.executeQuery();
        rs.next();
        nomUsuario=rs.getString("usuario");
        edad=Integer.parseInt(rs.getString("Edad"));
        }catch(Exception e){
            out.print(e.getMessage());
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Crear un usuario</title>
    </head>
    <body>
        <div class="container">
            <h1><%=titulo%></h1>
            <form action="<%=action%>" method="POST">
                <div class="form-row">
                    <div class="col">
                        <input class="form-control" type="text" value="<%=nomUsuario%>" placeholder="Nombre" name="usuario"  required/>
                    </div>
                    <div class="col">
                        <input class="form-control" type="number" value="<%=edad%>" placeholder="Nombre" name="edad" required/>
                    </div>
                    <div class="col">
                        <input class="form-control" type="<%=type%>" placeholder="Contraseña" name="password"  <%out.print(atributo);%>/>
                    </div>
                    <div class="col">
                        <input class="btn btn-success btn-block" type="submit" value="<%=value%>"/>
                    </div>
                </div>
                <input type="hidden" id="usuarioId" name="userId" value="<%=id%>">
            </form>
        </div>
    </body>
</html>


