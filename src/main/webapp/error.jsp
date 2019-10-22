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
        <div id="error">
            
            <p><%=request.getAttribute("error")%></p>



            <br />
            <p><a href="<%= request.getContextPath()%>">Volver</a></p>
        </div>
    </body>
</html>
