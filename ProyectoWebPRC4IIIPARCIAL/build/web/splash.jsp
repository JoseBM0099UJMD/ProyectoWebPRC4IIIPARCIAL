<%-- 
    Document   : splash
    Created on : 06-07-2023, 07:31:25 AM
    Author     : Alejandro Bautista
--%>
<html>
<head>
    <title>Splash Screen</title>
    <style>
        /* Estilos para la página de carga */
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
        // Ejecutar código JavaScript después de que se haya cargado la página
        window.addEventListener('load', function() {
            // Simula una demora de 4 segundos (4000 ms) para cargar los recursos de la aplicación
            setTimeout(function() {
                // Redirige a la página principal o realiza otras acciones necesarias
                window.location.href = 'Login.jsp';
            }, 4000);
        });
    </script>
</body>
</html>