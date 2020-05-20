<%-- 
    Document   : index
    Created on : 20 may. 2020, 12:20:59
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Serie de Numeros</title>
    </head>
    <h1>Formulario para serie de numeros</h1> 
        <p>Inserte a continuación un numero para calcular la serie</p>
            <form action="calcularSerie.jsp" method="get">
            numero
            <input type="number" name="minumero" required/><br><br>
            <input type="submit" value="Calcular"/>
        </form>    
    </body>
</html>
