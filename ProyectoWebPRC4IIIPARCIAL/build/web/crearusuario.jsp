<%-- 
    Document   : crearusuario
    Created on : 06-07-2023, 11:36:15 AM
    Author     : Alejandro Bautista
--%>

<%@page session="true" language="java" import="java.util.*" %>
<%@page import="sv.edu.ujmd.controlador.CheckLogin"%>
<%
    CheckLogin us;
    
    us = new CheckLogin();
            
    
    String usuario = request.getParameter("usuario");
    String password = request.getParameter("password");
    
    String resultado = us.NuevoUsuario(usuario,password);
    
    if (resultado != null) {      

%>
<jsp:forward page="Menu.jsp" />
<%
} else {
%>
<jsp:forward page="CRUDUsuarios.jsp">
    <jsp:param name="error" value="Se ha producido un error. Vuelve a intentarlo" />
</jsp:forward>
<%
    }  
%>
