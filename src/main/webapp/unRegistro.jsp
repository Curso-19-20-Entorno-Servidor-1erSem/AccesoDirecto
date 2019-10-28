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
        <title>Datos del ave.</title>
    </head>
    <body>
        <div id="contenido">
        <h1>Datos del ave</h1>
        
        <p><%=request.getAttribute("una").toString()%> </p>
        
        <a href="index.html">Volver</a>
        </div>
    </body>
</html>
