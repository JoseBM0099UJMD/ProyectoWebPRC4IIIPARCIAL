<%-- 
    Document   : Menu
    Created on : 06-01-2023, 07:29:18 PM
    Author     : Alejandro Bautista
--%>

<%@page import="java.util.Base64"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
 String usuario = "";
 HttpSession sesionOk = request.getSession();
 if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="../Login.jsp">
    <jsp:param name="error" value="Es obligatorio identificarse" />
</jsp:forward>
<%
 } else {
 usuario = (String) sesionOk.getAttribute("usuario");
 }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu principal</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" 
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <style>
            body{
                background: #89C6B3;
            }
            .medio{
                margin-top: 100px;
                margin-left: 525px;
            }
            .titulo{
                margin-left: -125px;
            }
        </style>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light col-md-10 offset-md-1">
  <a class="navbar-brand" href="Menu.jsp">Clinica Pediatrica</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pacientes
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="CRUDPacientes.jsp?usuario=<%= Base64.getEncoder().encodeToString(usuario.getBytes("utf-8")) %>">Ingresar/Modificar Pacientes</a>
          <a class="dropdown-item" href="GetPacientes.jsp?usuario=<%= Base64.getEncoder().encodeToString(usuario.getBytes("utf-8")) %>">Obtener Pacientes</a>
     </li>
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Usuarios
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="CRUDUsuarios.jsp?usuario=<%=Base64.getEncoder().encodeToString(usuario.getBytes("utf-8")) %>">Ingresar Usuario</a>
     </li>
     
      
      <li class="nav navbar-right" style="margin-left: 550px;">
            <a href="Cerrarsession.jsp">
               cerrar sesión</a>
      </li>
    </ul>
  </div>
</nav>
            <div class=" medio container">
                    <p>
                        <h5 class="titulo" style=" font-size: 50px;">Menú de administración</h5>
                        <b style="margin-left: 50px;"><h1>Usuario activo</h1></b>
                        <br><h2 style="margin-left: -30px;"><%=usuario%></h2>
                    </p>
            </div>
    </body>
</html>
