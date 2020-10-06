

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("listres") == null) {
        ArrayList<Registro> listaux = new ArrayList<Registro>();
        session.setAttribute("listres", listaux);
    }
    ArrayList<Registro> lista = (ArrayList<Registro>) session.getAttribute("listres");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Usuarios</h1>
        <a href="Controlador1?op=1">Nuevo</a>
        <table border="1">
            <tr>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Correo</th>
                <th>Contraseña</th>
                <th></th>
                <th></th>

            </tr>
            <%
                if (lista != null) {
                    for (Registro item : lista) {

            %>

            <tr>
                <td><%=item.getNombre()%></td>
                <td><%=item.getApellido()%></td>
                <td><%=item.getCorreo()%></td>
                <td><%=item.getContraseña()%></td>
                <td>
                    <a href="Controlador1?op=2&nombre=<%=item.getNombre()%>">
                        Editar
                    </a>
                </td> 
                <td>
                    <a href="Controlador1?op=3&nombre=<%=item.getNombre()%>"
                       onclick="return confirm('Esta seguro de eliminar')">
                        Eliminar
                </td>

            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
