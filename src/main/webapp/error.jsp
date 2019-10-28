<%-- 
    Document   : error
    Created on : 22 oct. 2019, 1:37:47
    Author     : franciscoantonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="avesStyle.css" media="screen" />
        <title>Error</title>
    </head>
    <body>
        <h2><%=request.getAttribute("error")%> </h2>
        <br>
        <a href="index.html">Volver</a>
    </body>
</html>
