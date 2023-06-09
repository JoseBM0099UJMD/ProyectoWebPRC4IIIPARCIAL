<%-- 
    Document   : crearpaciente
    Created on : 06-06-2023, 08:00:00 PM
    Author     : Alejandro Bautista
--%>

<%@page session="true" language="java" import="java.util.*" %>
<%@page import="sv.edu.ujmd.controlador.Pacientes"%>
<%
    Pacientes pac;
    
    pac = new Pacientes();
            
    
    String Nombre = request.getParameter("Nombre");
    String Apellido = request.getParameter("Apellido");
    int Edad = Integer.parseInt(request.getParameter("Edad"));
    int Peso=  Integer.parseInt(request.getParameter("Peso"));
    String Fec_Nac = request.getParameter("Fec_Nac");
    String Padecimiento = request.getParameter("Padecimiento");
    String Tipo_Sangre = request.getParameter("Tipo_Sangre");
    String Nom_Padres = request.getParameter("Nom_Padres");
    
    String resultado = pac.IngresarDatos(Nombre,Apellido,Edad, Peso,Fec_Nac,Padecimiento, 
            Tipo_Sangre,
             Nom_Padres);
    
    if (resultado != null) {      

%>
<jsp:forward page="Menu.jsp" />
<%
} else {
%>
<jsp:forward page="CRUDPacientes.jsp">
    <jsp:param name="error" value="Se ha producido un error. Vuelve a intentarlo" />
</jsp:forward>
<%
    }  
%>
