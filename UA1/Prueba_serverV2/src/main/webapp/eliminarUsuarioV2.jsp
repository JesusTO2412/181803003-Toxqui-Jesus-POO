<%-- 
    Document   : eliminarUsuario2
    Created on : 19 jun. 2020, 23:01:12
    Author     : Jesus
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    int id = Integer.parseInt(request.getParameter("id"));
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
        stmt = conexion.prepareStatement("DELETE FROM usuario WHERE id_usuario=?");
        stmt.setInt(1, id);
        stmt.executeUpdate();
        
        out.println("");
        
    }catch(SQLException e){  
        out.println("Error: "+e.getMessage());  
    }finally{
        response.sendRedirect("index.jsp");
    }

%>
