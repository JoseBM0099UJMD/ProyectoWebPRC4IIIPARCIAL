    Document   : CRUDPacientes
    Created on : 06-01-2023, 07:42:53 PM
    Author     : Alejandro Bautista
--%>

<%@page import="sv.edu.ujmd.controlador.Pacientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD de Pacientes</title>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" 
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body>
    <h1>CRUD de Pacientes</h1>

    <%-- Mostrar mensajes de éxito o error --%>
    <% String message = (String) request.getAttribute("message"); %>
    <% if (message != null && !message.isEmpty()) { %>
        <p><%= message %></p>
    <% } %>

    <%-- Formulario de creación y edición de paciente --%>
    <h2>Agregar/Editar Paciente</h2>
    <form action="crearpaciente.jsp" method="post">
        <div class="form-group">                            
                            <input type="text" class="form-control" id="Nombre" placeholder="Nombre" name="Nombre" >
                        </div>
                        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Apellido" placeholder="Apellido" name="Apellido" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Edad" placeholder="Edad" name="Edad" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Peso" placeholder="Peso" name="Peso" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Fec_Nac" placeholder="Fecha de Nacimiento" name="Fec_Nac" >
                        </div>
        
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Padecimiento" placeholder="Padecimiento" name="Padecimiento" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Tipo_Sangre" placeholder="Tipo de Sangre" name="Tipo_Sangre" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Nom_Padres" placeholder="Responsable" name="Nom_Padres" >
                        </div>
                        

                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">Guardar</button>
                        </div>
        </form>    
        
        <form action="modificarpaciente.jsp" method="put">
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="idPacienteM" placeholder="ID Paciente" name="idPacienteM" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="NombreM" placeholder="Nombre" name="NombreM" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="ApellidoM" placeholder="Apellido" name="ApellidoM" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="EdadM" placeholder="Edad" name="EdadM" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="PesoM" placeholder="Peso" name="PesoM" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Fec_NacM" placeholder="Fecha de Nacimiento" name="Fec_NacM" >
                        </div>

        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="PadecimientoM" placeholder="Padecimiento" name="PadecimientoM" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Tipo_SangreM" placeholder="Tipo de Sangre" name="Tipo_SangreM" >
                        </div>
        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="Nom_PadresM" placeholder="Responsable" name="Nom_PadresM" >
                        </div>
                        

                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">Modificar</button>
                        </div>
 
    </form>
    
    </body>
</html>
