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
            <h2>Listado de Aves.</h2>
            <table>
                <%
                    List<Ave> listado = null;
                    listado = new ArrayList();
                    listado = (ArrayList<Ave>) request.getAttribute("lista");
                    for (Ave pajaro : listado) {
                %>
                <tr>
                    <td><%=pajaro.getAnilla()%></td>
                    <td><%=pajaro.getEspecie()%></td>
                    <td><%=pajaro.getLugar()%></td>
                    <td><%=pajaro.getFecha()%></td>
                </tr>
                <%
                    }
                %>
            </table>



            <br />
            <p><a href="<%= request.getContextPath()%>">Volver</a></p>
        </div>
    </body>
</html>
