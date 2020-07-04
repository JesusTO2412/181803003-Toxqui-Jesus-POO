<%-- 
    Document   : index
    Created on : 24 may. 2020, 22:11:51
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orden Asc - Jesus Toxqui Ortega</title>
    </head>
   <body>
        <h1>Ordenamiento ascendente de N números</h1>
        <form action="calcular.jsp" method="post">
            ¿Cuántos números deseas ordenar?
            <input type="number" name="n" required/><br><br>
            <input type="submit" value="Aceptar"/>
        </form>
    </body>
</html>
