
package com.emergentes.controlador;

import com.emergentes.modelo.Registro;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Controlador1", urlPatterns = {"/Controlador1"})
public class Controlador1 extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int op =Integer.parseInt(request.getParameter("op"));
        String nombre;
        int pos;
        HttpSession ses= request.getSession();
        ArrayList<Registro> lista =(ArrayList<Registro>) ses.getAttribute("listres");
        if(op == 1){
           Registro r=new Registro();
           request.setAttribute("miRegistro", r);
           request.getRequestDispatcher("editar.jsp").forward(request, response);
        }
        if(op ==2){
         nombre=request.getParameter("nombre");
         pos=buscarIndice(request,nombre);
         
         Registro r1= lista.get(pos);
         request.setAttribute("miRegistro", r1);
          request.getRequestDispatcher("editar.jsp").forward(request, response);
          
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pos;
       String nombre=request.getParameter("nombre");
       String apellido=request.getParameter("apellido");
       String correo=request.getParameter("correo");
       String contraseña=request.getParameter("contraseña");
       String nuevo =request.getParameter("nuevo");
       
       Registro res= new Registro();
       res.setNombre(nombre);
       res.setApellido(apellido);
       res.setCorreo(correo);
       res.setContraseña(contraseña);
       
       HttpSession ses= request.getSession();
       ArrayList<Registro> lista =(ArrayList<Registro>) ses.getAttribute("listres");
       if(nuevo.equals("true")){
       lista.add(res);
       }
       else{
          pos =buscarIndice(request,nombre);
          lista.set(pos, res);
          
          
       }
       
       response.sendRedirect("index2.jsp");
       
    }
    private int buscarIndice(HttpServletRequest request,String nombre){
        HttpSession ses=request.getSession();
        ArrayList<Registro> lista=(ArrayList<Registro> ) ses.getAttribute("listres");
        
        int i=0;
        if(lista.size()>0){
            while(i<lista.size()){
                if(lista.get(i).getNombre()==nombre){
                    break;
                    
                }
                else i++;
            }
        }
       return i; 
    }

   

}
