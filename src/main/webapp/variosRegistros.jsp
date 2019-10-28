<%-- 
    Document   : variosRegistros
    Created on : 22 oct. 2019, 1:39:04
    Author     : franciscoantonio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="es.albarregas.beans.Ave"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="avesStyle.css" media="screen" />
        <title>Listado de Aves.</title>
    </head>
    <body>
        <div id="contenido">
        <h1>Listado de aves</h1>
        <%ArrayList<Ave> aves=(ArrayList)request.getAttribute("aves");
            for(Ave a:aves){
                %>
                <p><%=a.toString()%></p>
                <%
            }
        %>
        <a href="index.html">Volver</a>
        </div>
    </body>
</html>
