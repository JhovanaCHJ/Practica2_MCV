<%@page import="com.emergentes.modelo.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Registro item=(Registro)request.getAttribute("miRegistro");

boolean nuevo=true;
if(item.getNombre()!=null){
    nuevo=false;
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de usuarios</h1>
        <form action="Controlador1" method="post">
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="<%=item.getNombre()%>"></td>
                </tr>
                 <tr>
                    <td>Apellido</td>
                    <td><input type="text" name="apellido" value="<%=item.getApellido()%>"></td>
                </tr>
                 <tr>
                    <td>Correo</td>
                    <td><input type="text" name="correo" value="<%=item.getCorreo()%>"></td>
                </tr>
                 <tr>
                    <td>Contraseña</td>
                    <td><input type="text" name="contraseña" value="<%=item.getContraseña()%>"></td>
                </tr>
                 <tr>
                     <input type="hidden" name="nuevo" value="<%=nuevo%>">
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
