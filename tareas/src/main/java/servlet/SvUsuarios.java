/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import com.umariana.mundo.Control;
import com.umariana.mundo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {

    private ArrayList<Usuario> usuarios= new ArrayList<>();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                
        String nombre_usuario=request.getParameter("nombre_usuario");
        
        String contrasenia=request.getParameter("contrasenia");
        
        
        try {
        if (Control.verificarUsuarioCreado(nombre_usuario,contrasenia)) {
            // Usuario autenticado, redirige a TareasApp.jsp
            response.sendRedirect("registrar.jsp?nombreUsuario=" + nombre_usuario);
        } else {
            // Usuario no autenticado, redirige a index.jsp con un mensaje de alerta
            String errorMessage = "Por favor, inicie sesión o regístrese.";
            String script = "<script>alert('" + errorMessage + "'); window.location.href = 'index.jsp';</script>";
            response.setContentType("text/html");
            response.getWriter().write(script);
        }
    } catch (IOException e) {
        // Maneja las excepciones si es necesario
        e.printStackTrace();
    }
        
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre_usuario=request.getParameter("nombre");
        
        String contrasenia=request.getParameter("contrasenia");
        String cedula=request.getParameter("cedula");
        
   
        // Verificar si el usuario ya existe
    if (Control.verificarUsuarioCreado(nombre_usuario, contrasenia)) {
        // El usuario ya existe, muestra un mensaje de error y redirige
        String errorMessage = "El usuario ya está registrado.";

        // Utiliza JavaScript para mostrar la alerta de error y redirigir después de hacer clic en "Aceptar"
        String script = "<script>alert('" + errorMessage + "'); window.location.href = 'index.jsp';</script>";
        response.setContentType("text/html");
        response.getWriter().write(script);
    } else {
        // El usuario no existe, crea un nuevo usuario y guárdalo
        Usuario nuevoUsuario = new Usuario(nombre_usuario, cedula, contrasenia);
        usuarios.add(nuevoUsuario);
        Control.guardarUsuario(usuarios); // Agrega el usuario a la lista
        

        String nombreUsuario = nuevoUsuario.getNombre_usuario();
        String script = "<script>alert('Se ha registrado exitosamente.'); window.location.href = 'index.jsp?nombreUsuario=" + nombreUsuario + "';</script>";
        response.setContentType("text/html");
        response.getWriter().write(script);
    }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
