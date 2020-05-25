<%-- 
    Document   : calcular2
    Created on : 25 may. 2020, 9:38:06
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="misClases.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ordenamiento ascendente de N números</h1>
        
        <%
        int cant = Integer.parseInt(request.getParameter("cantidadN"));    
        int numeros[] = new int[cant];
        String casteo;
        
        for(int i=0; i<cant; i++){ 
        
            casteo = String.valueOf(i);
            numeros[i]=Integer.parseInt(request.getParameter(casteo));
            
        }
  
        calcularOrden.quicksort(numeros, 0, cant-1);

        for (int i = 0; i < numeros.length; i++) {    
        
            out.println(numeros[i] + "  ");
           
        }   
        %>
        
        <a href="index.jsp">Volver al inicio

    </body>
</html>
