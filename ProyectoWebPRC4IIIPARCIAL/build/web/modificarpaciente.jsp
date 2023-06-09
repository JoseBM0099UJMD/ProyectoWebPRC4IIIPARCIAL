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
            
    int idPacienteM = Integer.parseInt(request.getParameter("idPacienteM"));
    String NombreM = request.getParameter("NombreM");
    String ApellidoM = request.getParameter("ApellidoM");
    int EdadM = Integer.parseInt(request.getParameter("EdadM"));
    int PesoM =  Integer.parseInt(request.getParameter("PesoM"));
    String Fec_NacM = request.getParameter("Fec_NacM");
    String PadecimientoM = request.getParameter("PadecimientoM");
    String Tipo_SangreM = request.getParameter("Tipo_SangreM");
    String Nom_PadresM = request.getParameter("Nom_PadresM");
    
    String resultado = pac.ModificarDatos(idPacienteM,NombreM,ApellidoM,EdadM, PesoM,Fec_NacM,PadecimientoM, 
            Tipo_SangreM,Nom_PadresM);
    
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
