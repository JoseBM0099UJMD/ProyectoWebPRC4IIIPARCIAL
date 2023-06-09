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
import javax.swing.*;
import java.awt.*;

public class splash extends JWindow{
    private int duracion = 0;
    
    public splash(int duracion){
        this.duracion = duracion;
        
        JPanel panel = (JPanel)getContentPane();
        ImageIcon img = new ImageIcon("img/CLINICA PEDIATRICA.png");
        
        panel.add(new JLabel(img),BorderLayout.CENTER);
        setSize(img.getIconWidth(),img.getIconHeight());
        setLocationRelativeTo(null);
        setVisible(true);
        
        try{
            Thread.sleep(duracion);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        setVisible(false);
    }
    
    public void app(){
        JFrame ventana = new JFrame("Aplicacion");
        ventana.add(new JLabel("AQUI VA TU APLICACIÓN"));
        ventana.setSize(300,300);
        ventana.setLocationRelativeTo(null);
        ventana.setVisible(true);
    }
/*    public static void main(String[]args){
        new splash(4000);
    }
    
  */  
}
