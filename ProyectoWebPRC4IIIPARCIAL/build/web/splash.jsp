<%-- 
    Document   : splash
    Created on : 06-07-2023, 07:31:25 AM
    Author     : Alejandro Bautista
--%>
<html>
<head>
    <title>Splash Screen</title>
    <style>
        /* Estilos para la p�gina de carga */
        .splash-container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        
        .splash-image {
            max-width: 800px;
        }
    </style>
</head>
<body>
    <div class="splash-container">
        <img class="splash-image" src="CLINICA.png" alt="Logo de carga">
    </div>

    <script>
        // Ejecutar c�digo JavaScript despu�s de que se haya cargado la p�gina
        window.addEventListener('load', function() {
            // Simula una demora de 4 segundos (4000 ms) para cargar los recursos de la aplicaci�n
            setTimeout(function() {
                // Redirige a la p�gina principal o realiza otras acciones necesarias
                window.location.href = 'Login.jsp';
            }, 4000);
        });
    </script>
</body>
</html>