package Dao;

import Conf.Conexion;
import java.sql.*;
import java.util.*;

public class UsuarioBD {
    
    //Atributos SQL
    private static final String listado="SELECT * FROM usuario";
    private static final String insertado="INSERT INTO usuario SET usuario=?, password=md5(?), edad=?";
    private static final String editado="UPDATE usuario SET usuario=?, edad=? WHERE id_usuario=?";
    private static final String editadoPass="SELECT id_usuario, password FROM usuario WHERE id_usuario=? and password=md5(?)";
    private static final String editadoPass2="UPDATE usuario SET password=md5(?) WHERE id_usuario=?";
    private static final String eliminado="SELECT * FROM usuario WHERE id_usuario=?";
    private static final String eliminado2="DELETE FROM usuario WHERE id_usuario=?";
    
    
    
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
    
    public boolean insertarUsuario(Usuario usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(insertado);
        this.stmt.setString(1, usuario.getUsuario());
        this.stmt.setString(2, usuario.getPassword());
        this.stmt.setInt(3, usuario.getEdad());
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
     public boolean editarUsuario(Usuario usuario) throws SQLException {
        stmt = conexion.prepareStatement(editado);
        this.stmt.setString(1, usuario.getUsuario());
        this.stmt.setInt(2, usuario.getEdad());
        this.stmt.setInt(3, usuario.getId_usuario());
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
    public boolean editarPassword(Usuario usuario) throws SQLException {
        stmt = conexion.prepareStatement(editadoPass);
        this.stmt.setInt(1, usuario.getId_usuario());
        this.stmt.setString(2, usuario.getPassword());
        rs=this.stmt.executeQuery();
        if(rs.next()){
            return true;
        }else{
            return false;
        }
    }
    
     public void actualizarPassword(Usuario usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(editadoPass2);
        this.stmt.setInt(2, usuario.getId_usuario());
        this.stmt.setString(1, usuario.getPassword());
        this.stmt.executeUpdate();
    }
     
    public String eliminarUsuario(Usuario usuario) throws SQLException {
        String nomUsuario;
        stmt = conexion.prepareStatement(eliminado);
        this.stmt.setInt(1, usuario.getId_usuario());
        rs=this.stmt.executeQuery();
        rs.next();
        nomUsuario=rs.getString("usuario");
        return nomUsuario;
        
    }
    
    public boolean eliminarUsuario2(Usuario usuario) throws SQLException {
        stmt = conexion.prepareStatement(eliminado2);
        this.stmt.setInt(1, usuario.getId_usuario());
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
        
    }
     
    
}
