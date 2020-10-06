

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inscripcion a un curso</h1>
        <form action="ServletControlador" method="post">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre"></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="apellido"></td>
                </tr>
                <tr>
                    <td>Curso:</td>
                    <td><input type="text" list="items" >
                        <datalist id="items">
                            <option value="1">Curso de Java </option>
                            <option value="2">Curso de python</option>
                            <option value="3">Curso de C#</option>
                        </datalist>
                    </td>

                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>

    </body>
</html>
