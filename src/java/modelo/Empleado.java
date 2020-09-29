/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
/**
 *
 * @author paiz2
 */
public class Empleado extends Persona {
    private String codigo;
    private int id_puesto;
    private Conexion cn;
    public Empleado() {   
    }
    public Empleado(String codigo, int id_puesto, int id, String nombres, String apellidos, String direccion, String telefono, String fecha_nacimiento) {
        super(id, nombres, apellidos, direccion, telefono, fecha_nacimiento);
        this.codigo = codigo;
        this.id_puesto = id_puesto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }
   
    @Override
 public int agregar(){
     int retorno = 0;
     try{
         PreparedStatement parametro;
         cn = new Conexion();
         String query="INSERT INTO empleados(codigo,nombres,apellidos,direccion,telefono,fecha_nacimiento,id_puesto) VALUES (?,?,?,?,?,?,?);";
         cn.abrir_conexion();
         parametro =  (PreparedStatement)cn.conexionBD.prepareStatement(query);
         parametro.setString(1, getCodigo());
         parametro.setString(2, getNombres());
         parametro.setString(3, getApellidos());
         parametro.setString(4, getDireccion());
         parametro.setString(5, getTelefono());
         parametro.setString(6, getFecha_nacimiento());
         parametro.setInt(7, getId_puesto());
         
         retorno =parametro.executeUpdate();
         cn.cerrar_conexion();
     }catch(SQLException ex){
         System.out.println(ex.getMessage());
         retorno = 0;
     }
         
    return retorno;
 }   
    
    
}
