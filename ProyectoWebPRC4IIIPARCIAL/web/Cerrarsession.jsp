<%-- 
    Document   : Cerrarsession
    Created on : 06-03-2023, 07:28:35 AM
    Author     : Alejandro Bautista
--%>
<%@ page session="true" %>
<%
 HttpSession sesionOk = request.getSession();
 sesionOk.invalidate();
%>
<jsp:forward page="Login.jsp"/>
