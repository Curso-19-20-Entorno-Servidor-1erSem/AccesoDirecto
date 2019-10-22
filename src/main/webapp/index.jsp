<%-- 
    Document   : index
    Created on : 22 oct. 2019, 1:31:26
    Author     : franciscoantonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="avesStyle.css" />
        <title>Avistamientos de Aves.</title>
    </head>
    <body>
        <div id="contenido">
            <h2>Página de avistamientos</h2>
            <form action="buscador" method="post">
                <table>
                    <tr>
                        <td>Introduce una anilla</td>
                        <td><input name="anilla" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Anilla" name="unaAnilla"/></td>
                        <td><input type="submit" value="Todas" name="todas"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
