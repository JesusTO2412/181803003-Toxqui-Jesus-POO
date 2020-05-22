<%-- 
    Document   : INDEX
    Created on : 22 may. 2020, 8:34:29
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>El programa que debio ser y no fue(Sin Try, Sin JavaScript, Sin problemas de GlassFish)</h1>

        <%
        if (request.getParameter("minumero") != null && request.getParameter("minumero") != "") {
        %>
            <h1>El ciclo del valor ingresado es</h1>
        <%                    
            int numero = Integer.parseInt(request.getParameter("minumero"));
            for (int i = 0; i <= numero; i++) {
                out.println(i + " ");
            }
            %>
            <form>
                <input type="hidden" name="minumero" value=""/><br><br>
                <input type="submit" value="Regresar"/>
            </form>
            <%
        } else {
        %>
        <form>
            numero
            <input type="number" name="minumero" required/><br><br>
            <input type="submit" value="Calcular"/>
        </form>
        <h3>No has ingresado ningun numero</h3>
        <%
            }
        %>
    </body>
</html>
