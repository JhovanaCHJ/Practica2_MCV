
<%@page import="com.emergentes.modelo.Inscripcion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Inscripcion ins= (Inscripcion)request.getAttribute("miins");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por inscribirse</h1>
        <p>Su nombre es:<%=ins.getNombre()%></p>
        <p>Su apellido es:<%=ins.getApellido()%></p>
        <p>El curso que se inscribio es: </p>
          <ul>
        //<%
            String curso[]=ins.getCurso();
            if(curso!=null){
                for(int i=0;i<curso.length;i++){
        %>
       
            <li><%=curso[i]%></li>
        
        <%
                   }
}
        %>
    </body>
</html>
