<%-- 
    Document   : unRegistro
    Created on : 22 oct. 2019, 1:38:22
    Author     : franciscoantonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="avesStyle.css" media="screen" />
        <title>Resultados</title>
    </head>
    <body>
        <div id="contenido">
            <h2>Salida de resultados para la anilla <%=request.getAttribute("anilla")%></h2>
            <p>La especie es: <%=request.getAttribute("especie")%></p>
            <p>se encuentra en: <%=request.getAttribute("lugar")%></p>
            <p>en la fecha: <%=request.getAttribute("fecha")%></p>



            <br />
            <p><a href="<%= request.getContextPath()%>">Volver</a></p>
        </div>
    </body>
</html>
