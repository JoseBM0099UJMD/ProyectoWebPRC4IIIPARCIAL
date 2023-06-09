<%-- 
    Document   : Login
    Created on : 06-01-2023, 07:22:14 PM
    Author     : Alejandro Bautista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesión</title>
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
                background: black;
            }
            .login{
                background: white;
                border: 1px solid black; 
                margin-top: 150px; 
                border-radius: 10px; 
                padding: 20px;
            }
            h2{
                margin-left: 85px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="login col-sm-4 offset-md-4" style="">
                    <h2>Inicio de Sesión</h2>
                    <%
                        if (request.getParameter("error") != null) {
                    %>
                    <div class="alert alert-danger">
                        <strong>Error!</strong>
                        <%= request.getParameter("error")%>
                        <br>
                    </div>
                    <%
                        }
                    %>
                    <form action="checkLogin.jsp" method="post">
                        
                        <div class="form-group">                            
                            <input type="text" class="form-control" id="user" placeholder="Usuario" name="user" required>
                        </div>
                        
                        <div class="form-group">                            
                            <input type="password" class="form-control" id="password" placeholder="Contraseña" name="password" required>
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">Iniciar Sesión</button>
                        </div>                         
                    </form>
                </div>
            </div>           
        </div>
    </body>
</html>
