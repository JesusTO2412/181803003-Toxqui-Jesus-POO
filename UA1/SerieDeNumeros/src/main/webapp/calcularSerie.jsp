<%-- 
    Document   : calcularSerie
    Created on : 20 may. 2020, 13:16:54
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Serie de Numeros</title>
    </head>
    <body>
        <h1>Serie de Numeros</h1>
        <%
            if(request.getParameter("minumero").isEmpty()){
                //out.println("No se ha insertado ningun numero"); 
            }else{
                String numInput = request.getParameter("minumero");
                int num = Integer.valueOf(numInput);          
                for(int i=0;i<=num;i++){
                    out.println(i + "-");
                }
            }            
        %>
        <br><br>
        <a href="index.jsp">Volver al inicio
    </body>
</html>
