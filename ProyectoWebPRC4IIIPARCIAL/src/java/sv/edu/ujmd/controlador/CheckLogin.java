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
import java.sql.SQLException;
import java.sql.Types;
import java.util.logging.Level;
import java.util.logging.Logger;
import sv.edu.ujmd.util.Conexion;

/**
 *
 * @author Alexander-Siguenza
 */
public class CheckLogin {
    
    // Atributos privados
    private String Insertar = "CALL InsertarUsuarios(?,?)";
    private Connection cnn;



    public CheckLogin() {
        cnn = Conexion.Conectar();
    }  

    public String getInsertar() {
        return Insertar;
    }

    public void setInsertar(String Insertar) {
        this.Insertar = Insertar;
    }
    
    /*
    CREATE DEFINER=`root`@`localhost` PROCEDURE `verifyUser`(IN pusuario TEXT, IN ppassword TEXT, OUT outCout INT)
    READS SQL DATA
   BEGIN  
    SELECT count(*) INTO outCout FROM usuarios WHERE usuario  = pusuario and password = ppassword;    
    END
    */

    public static int verifyUser(String usuario, String password) {
        int val = 0;
        try {
            Connection con = Conexion.Conectar();
            CallableStatement cmst = con.prepareCall("CALL verifyUser(?,?,?)");
            cmst.setString(1, usuario);
            cmst.setString(2, password);
            cmst.registerOutParameter(3, Types.VARCHAR); // para recuperarparametros de salidad de MYSQL -> OUT outCout INT          
            cmst.executeUpdate();
            val = cmst.getInt(3);
            con.close();          
        } catch (SQLException sqlex) {
            System.out.println(sqlex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return val;
    }

    public String NuevoUsuario(String usuario, 
            String password)
    {
        String resultado;
        try {  
            cnn = Conexion.Conectar();            
            CallableStatement cmst = cnn.prepareCall(getInsertar());
            cmst.setString(1, usuario);
            cmst.setString(2, password);
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
    
}