<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datingo - Usuarios </title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <%
            Connection conexion = null;
            Statement stmt = null;
            ResultSet rs = null;

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/datingo ?serverTimezone=UTC","root","");

            }catch(SQLSyntaxErrorException e){
                out.println("No existe la tabla: " + e.getMessage());
            }catch(Exception e){
                out.println("Error " + e.getMessage());
            }

        %>  
    </head>
    <body>
  
        <%
         stmt = conexion.createStatement();
             rs = stmt.executeQuery("SELECT idUsuario,nombreUsuario,correoElectronico,"
                     + "telefono,fechaNacimiento,estado FROM usuario JOIN estado ON usuario.idEstado=estado.idEstado");
             

        %>         
        <div class="jumbotron" style="background-color: #e34a42cc; color: #fff;">
            <div class="container">
              <h1 class="display-3">Datingo </h1>
              <h2>Usuarios Registrados en la aplicacion</h2>
              <p><a class="btn btn-danger btn-lg" href="#" role="button">Learn more &raquo;</a></p>
            </div>
        </div>

        <div class="container marketing">
            <div class="row"> 
            <%
            while(rs.next()){
            %>
            <div class="container2 col-lg-4 text-center">
                <img class="rounded-circle" src="imagenes/user.png" alt="Generic placeholder image" width="140" height="140">
                <h2><% out.println(rs.getString(2));%></h2>
                <p>Correo: <% out.println(rs.getString(3));%><br>
                Telefono: <% out.println(rs.getString(4));%><br>
                Fecha de Nacimiento: <% out.println(rs.getString(5));%><br>
                Estado: <% out.println(rs.getString(6));%></p>
                
            </div>    
            <%
            }
            %>
            </div>
        </div>
    </body>
</html>
