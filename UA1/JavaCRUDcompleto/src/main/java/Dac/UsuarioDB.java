/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dac;
import config.Conexion;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Pc
 */
public class UsuarioDB {
    //Atributos SQL
    private static final String listado="SELECT * FROM usuario";
    
    
    //Atributos de conexión
   private Connection conexion= new Conexion().getConexion();
   private PreparedStatement stmt;
   private ResultSet rs;
   
   public List<Usuario> listadoUsuarios() throws SQLException{
       List<Usuario> usuarios = new ArrayList<>();
       this.stmt=this.conexion.prepareStatement(this.listado);
       this.rs=this.stmt.executeQuery();
       while (this.rs.next()){
         usuarios.add(new Usuario(this.rs.getInt("id_usuario"),this.rs.getString("usuario"),this.rs.getInt("Edad"),this.rs.getString("password")));
           
       }
       
    return usuarios;
}
    
}
