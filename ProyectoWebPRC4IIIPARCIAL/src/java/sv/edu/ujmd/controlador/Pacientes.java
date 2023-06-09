/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.edu.ujmd.controlador;

/**
 *
 * @author Alejandro Bautista
 */
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import sv.edu.ujmd.util.Conexion;

/**
 *
 * @author Alejandro Bautista
 */
public class Pacientes {

    // Atributos privados
    private String Insertar = "CALL InsertarPacientes(?,?,?,?,?,?,?,?)";
    private String Modificar = "CALL ModificarPacientes(?,?,?,?,?,?,?,?,?)";
    private String Eliminar = "CALL BorrarPaciente(?)";
    private String vistapaciente = "select * from vistapaciente";
    private String vistaDepto = "select * from vistadepto"; 
    private int Columnas = 0;
    private Connection cnn;

    public Pacientes() {
        cnn = Conexion.Conectar();
    }  

    public String getInsertar() {
        return Insertar;
    }

    public void setInsertar(String Insertar) {
        this.Insertar = Insertar;
    }

    public String getModificar() {
        return Modificar;
    }

    public void setModificar(String Modificar) {
        this.Modificar = Modificar;
    }

    public String getEliminar() {
        return Eliminar;
    }

    public void setEliminar(String Eliminar) {
        this.Eliminar = Eliminar;
    }

    public String getVistapaciente() {
        return vistapaciente;
    }

    public void setVistapaciente(String vistapaciente) {
        this.vistapaciente = vistapaciente;
    }

    public String getVistaDepto() {
        return vistaDepto;
    }

    public void setVistaDepto(String vistaDepto) {
        this.vistaDepto = vistaDepto;
    }    

    public ResultSet llenarCombo() {
          ResultSet rs = null;
          Statement smt = null;
        try {
            Connection cnn;
            cnn = Conexion.Conectar();
            smt = cnn.createStatement();
///            rs= smt.executeQuery(getVistaDepto());
        } catch (SQLException ex) {
            Logger.getLogger(Pacientes.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public DefaultTableModel CargarDatos() {
        DefaultTableModel modelo = new DefaultTableModel();
        try {
            Connection cnn;
            cnn = Conexion.Conectar();
            Statement smt = cnn.createStatement();
            ResultSet rs = smt.executeQuery(getVistapaciente());
            ResultSetMetaData md = rs.getMetaData();
            int columnas = md.getColumnCount();
            for (int i = 1; i <= columnas; i++) {
                modelo.addColumn(md.getColumnLabel(i));
            }
            while (rs.next()) {
                Object[] fila = new Object[columnas];
                for (int i = 0; i < columnas; i++) {
                    fila[i] = rs.getObject(i + 1);
                }
                modelo.addRow(fila);
                fila = null;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Pacientes.class.getName()).log(Level.SEVERE, null, ex);
        }
        return modelo;
    }
    
    public String IngresarDatos(String Nombre, 
            String Apellido, 
            int Edad, int Peso, 
            String Fec_Nac,
            String Padecimiento, String Tipo_Sangre,
            String Nom_Padres)
    {
        String resultado;
        try {  
            cnn = Conexion.Conectar();            
            CallableStatement cmst = cnn.prepareCall(getInsertar());
            cmst.setString(1, Nombre);
            cmst.setString(2, Apellido);
            cmst.setInt(3, Edad);
            cmst.setInt(4, Peso);
            cmst.setString(5, Fec_Nac);
            cmst.setString(6, Padecimiento);
            cmst.setString(7, Tipo_Sangre);
            cmst.setString(8, Nom_Padres);
            cmst.execute();
            resultado = " Los datos se ingresaron exitosamente !!!";
            cnn.close();
        } catch (SQLException sqlex) {
            resultado = " No se realizo la operacion " + sqlex.getMessage();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            resultado = " No se realizo la operacion " + ex.getMessage();
        }
        return resultado;
    }
    
    public String ModificarDatos(int idPacienteM, String NombreM, String ApellidoM, 
            int EdadM, int PesoM, 
            String Fec_NacM,
            String PadecimientoM, String Tipo_SangreM,
            String Nom_PadresM) {
        String resultado;
        try {
            cnn = Conexion.Conectar();
            CallableStatement cmst = cnn.prepareCall(getModificar());
            cmst.setInt(1, idPacienteM);
            cmst.setString(2, NombreM);
            cmst.setString(3, ApellidoM);
            cmst.setInt(4, EdadM);
            cmst.setInt(5, PesoM);
            cmst.setString(6, Fec_NacM);
            cmst.setString(7, PadecimientoM);
            cmst.setString(8, Tipo_SangreM);
            cmst.setString(9, Nom_PadresM);
            cmst.execute();
            resultado = "Los datos se modificaron correctamente !!!";
            cnn.close();
        } catch (SQLException sqlex) {
            System.out.println(sqlex.getMessage());
            resultado = "No se realizo la operacion" + sqlex.getMessage();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            resultado = "No se realizo la operacion" + ex.getMessage();
        }
        return resultado;
    }

    public String EliminarDatos(int codigo) {
        String resultado;
        try {
            cnn = Conexion.Conectar();
            CallableStatement cmst = cnn.prepareCall(getEliminar());
            cmst.setInt(1, codigo);
            cmst.execute();
            resultado = "Los datos se eliminaron correctamente !!!";
            cnn.close();
        } catch (SQLException sqlex) {
            System.out.println(sqlex.getMessage());
            resultado = "No se realizo la operacion" + sqlex.getMessage();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            resultado = "No se realizo la operacion" + ex.getMessage();
        }
        return resultado;
    }

}

