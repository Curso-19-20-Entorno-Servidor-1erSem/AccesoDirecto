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
        <link rel="stylesheet" type="text/css" href="CSS/avesStyle.css" />
        <title>Avistamientos de Aves.</title>
    </head>
    <body>
        <div id="contenido">
            <h2>Página de avistamientos</h2>
            <form action="AccesoBD" method="post">
                <fieldset id="contenido">
                    <label>Introduce anilla:</label>
                    <input name="anilla" />
                    <br>
                    <br>
                    <input type="submit" value="Anilla" name="unaAnilla"/>
                    <input type="submit" value="Todas" name="todas"/>
                </fieldset>

            </form>
        </div>
    </body>
</html>
