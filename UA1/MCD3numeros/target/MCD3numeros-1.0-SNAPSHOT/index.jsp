<%-- 
    Document   : index
    Created on : 24 may. 2020, 21:16:00
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MCD - Jesus Toxqui Ortega</title>
    </head>
    <body>
        <h1>Máximo Comun Multiplo</h1>

        <%
        if (request.getParameter("a") != null && request.getParameter("a") != ""
        && request.getParameter("b") != null && request.getParameter("b") != ""
        && request.getParameter("c") != null && request.getParameter("c") != "") {
        
        int na = Integer.parseInt(request.getParameter("a")); 
        int nb = Integer.parseInt(request.getParameter("b"));
        int nc = Integer.parseInt(request.getParameter("c"));
        int MCD = 0;
        int Nminimo = 0;
        int r1 = 0, r2 = 0, r3 = 0; 
        
        if(na <= nb && na <= nc){
            Nminimo = na;
        }
        
        if(nb <= na && nb <= nc){
            Nminimo = nb;
        }
        
        if(nc <= na && nc <= nb){
            Nminimo = nc;
        }
        
        for (int i = 1; i <= Nminimo; i++) {
            
            r1 = na%i;
            r2 = nb%i;
            r3 = nc%i;
            
            if(r1 == 0 && r2 == 0 && r3 == 0){
                MCD = i;
            }
        
        }
            
            out.println("El Máximo Comun Multiplo de: " + na +", " + nb +" y " + nc + " es: " + MCD );

        %>
            <form>
                <input type="hidden" name="a" value=""/>
                <input type="hidden" name="b" value=""/>
                <input type="hidden" name="c" value=""/><br>
                <input type="submit" value="Regresar"/>
            </form>
            <%
        } else {
        %>
        <form>
            numero 1
            <input type="number" name="a" required/><br><br>
            numero 2
            <input type="number" name="b" required/><br><br>
            numero 3
            <input type="number" name="c" required/><br><br>
            <input type="submit" value="Calcular"/>
        </form>
        <%
            }
        %>
    </body>
</html>
