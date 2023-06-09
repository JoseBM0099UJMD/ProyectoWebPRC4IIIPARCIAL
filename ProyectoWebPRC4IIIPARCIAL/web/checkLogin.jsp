<%-- 
    Document   : checkLogin
    Created on : 06-01-2023, 10:18:28 PM
    Author     : Alejandro Bautista
--%>
<%@page session="true" language="java" import="java.util.*" %>
<%@page import="sv.edu.ujmd.controlador.CheckLogin"%>
<%
    String user = request.getParameter("user");
    String password = request.getParameter("password");
    
    int val = CheckLogin.verifyUser(user, password);
    
    if (val == 1) {      
        //Se asignan parametros de sesión
        HttpSession sesionOk = request.getSession();
        sesionOk.setAttribute("usuario", user);
%>
<jsp:forward page="Menu.jsp" />
<%
} else {
%>
<jsp:forward page="Login.jsp">
    <jsp:param name="error" value="Usuario y/o clave Incorrecto. Vuelve a intentarlo" />
</jsp:forward>
<%
    }  
%>
