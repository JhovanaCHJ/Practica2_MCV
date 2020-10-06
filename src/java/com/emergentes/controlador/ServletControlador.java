
package com.emergentes.controlador;

import com.emergentes.modelo.Inscripcion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String nombre=request.getParameter("nombre");
       String apellido=request.getParameter("apellido");
       String []curso=request.getParameterValues("curso");
       Inscripcion ins= new Inscripcion();
       ins.setNombre(nombre);
       ins.setApellido(apellido);
       ins.setCurso(curso);
       request.setAttribute("miins", ins);
       request.getRequestDispatcher("salida.jsp").forward(request, response);
       
    }

 
}
