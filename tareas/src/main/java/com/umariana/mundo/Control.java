package com.umariana.mundo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;

public class Control {
    
    private static ArrayList<Usuario> usuarios= new ArrayList<>();
    
    
    
public static void guardarUsuario(ArrayList<Usuario> nuevosUsuarios) throws IOException {
    // Obtén la ubicación del directorio donde se encuentra la clase Control
    URL resourceUrl = Control.class.getProtectionDomain().getCodeSource().getLocation();
    File jarPath = new File(resourceUrl.getPath());
    File projectDir = jarPath.getParentFile().getParentFile().getParentFile().getParentFile(); // Ajusta esto según tu estructura de directorios
    String rutaRelativa = "tareas/target/tareas-1.0/data";

    // Construye la ruta absoluta basada en la ubicación del proyecto
    File directorioData = new File(projectDir, rutaRelativa);

    // Crea la carpeta "data" si no existe
    if (!directorioData.exists()) {
        directorioData.mkdirs();
    }

    // Crear el archivo "usuarios.txt" dentro de la carpeta "data"
    File archivoUsuarios = new File(directorioData, "usuarios.txt");

    String rutaAbsoluta = archivoUsuarios.getAbsolutePath();
    System.out.println("Ruta donde se guarda la información: " + rutaAbsoluta);

    PrintWriter lapiz = new PrintWriter(new FileWriter(archivoUsuarios, true));

    if (nuevosUsuarios.isEmpty()) {
        lapiz.close();
        return;
    }

    for (Usuario usuario : nuevosUsuarios) {
        lapiz.print(usuario.getNombre_usuario());
        lapiz.print(",");
        lapiz.print(usuario.getCedula());
        lapiz.print(",");
        lapiz.print(usuario.getContrasenia());
        lapiz.println();
    }

    lapiz.close();
}

    
    
public static void cargarUsuarios() throws FileNotFoundException, IOException {
    // Obtén la ubicación del directorio donde se encuentra la clase Control
    URL resourceUrl = Control.class.getProtectionDomain().getCodeSource().getLocation();
    File jarPath = new File(resourceUrl.getPath());
    File projectDir = jarPath.getParentFile().getParentFile().getParentFile().getParentFile(); // Ajusta esto según tu estructura de directorios
    String rutaRelativa = "tareas/target/tareas-1.0/data/usuarios.txt";

    // Construye la ruta absoluta basada en la ubicación del proyecto
    File archivoACargar = new File(projectDir, rutaRelativa);

    usuarios = new ArrayList<>(); // Inicializa la lista de usuarios

    if (archivoACargar.exists() && archivoACargar.isFile()) {
    try (BufferedReader lector = new BufferedReader(new FileReader(archivoACargar))) {
        String linea;
        while ((linea = lector.readLine()) != null) {
            String[] datosUsuario = linea.split(",");
            
            if (datosUsuario.length == 3) {
                Usuario nuevoUsuario = new Usuario(datosUsuario[0], datosUsuario[1], datosUsuario[2]);
                usuarios.add(nuevoUsuario);
            } else {
                // Manejar líneas incorrectas o vacías en el archivo
                System.err.println("Error en el formato de línea: " + linea);
            }
        }
    }
} else {
    System.out.println("No se encontró el archivo 'usuarios.txt'");
}

}


    public static void crearUsuario(){
        
    }

    public static ArrayList<Usuario> getUsuarios() {
        return usuarios;
    }

    public static void setUsuarios(ArrayList<Usuario> usuarios) {
        Control.usuarios = usuarios;
    }
    
    
    public static boolean verificarUsuarioCreado(String nombre, String contrasenia) throws IOException {
        
        cargarUsuarios();
    
        for (Usuario usuario : usuarios) {
        
        if (usuario.getNombre_usuario().equals(nombre)  && usuario.getContrasenia().equals(contrasenia)) {
            
            return true; // El usuario existe en la lista
            
        }
    }
 
    return false; // El usuario no se encuentra en la lista
}

    
}
