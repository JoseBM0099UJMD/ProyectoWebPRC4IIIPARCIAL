<%-- 
    Document   : obtenerpaciente
    Created on : 06-07-2023, 09:15:08 AM
    Author     : Alejandro Bautista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sv.edu.ujmd.controlador.Pacientes"%>

<script>
    function CargarDatos() {
        // Realiza una llamada AJAX u obtén los datos de alguna otra manera
        // Supongamos que los datos se almacenan en una lista de objetos llamada "data"
        var data = [
            { columna1: idPaciente, columna2: Nombre, columna3: Apellido },
            { columna4: Edad, columna5: Peso, columna6: Fec_Nac},
            {columna7: Padecimiento, columna8: Tipo_Sangre, columna9: Nom_Padres };
            // Agrega más objetos de datos según tus necesidades
        ];

        var tbody = document.querySelector('tbody');

        // Genera las filas de la tabla dinámicamente utilizando los datos obtenidos
        data.forEach(function(item) {
            var row = document.createElement('tr');
            row.innerHTML = '<td>' + item.columna1 + '</td>' +
                            '<td>' + item.columna2 + '</td>' +
                            '<td>' + item.columna3 + '</td>';
            tbody.appendChild(row);
        });
    }

    // Llama a la función getData para generar las filas de la tabla al cargar la página
    window.addEventListener('load', CargarDatos);
</script>
