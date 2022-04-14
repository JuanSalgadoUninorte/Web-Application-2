<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/bec3cdf477.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <title>CRUD</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a class="navbar-brand" href="#">Pruebas con WEB</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="nueva.jsp">Secundaria <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="agregar.jsp">Registrar <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown link
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Principal</h1>

        <form action="Recibedatos" method="POST">
            <div class="form-group">
                <input type="text" class="form-control" id="cedula" name="cedula" placeholder="Cédula">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Teléfono">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección">
            </div>
            <button type="submit" class="btn btn-primary">Enviar Datos</button>
        </form>

        <div class="container">               

            <table class="table table-striped table-dark"  id="tablaDatos">
                <thead>
                    <tr>
                        <th class="text-center">CEDULA</th>
                        <th class="text-center">Nombres</th>
                        <th class="text-center">DIRECCION</th>
                        <th class="text-center">TELEFONO</th>
                        <th class="text-center">EDICION</th>
                    </tr>
                </thead>
                <tbody id="tbodys">
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td class="text-center"><%= rs.getString("Cedula")%></td>
                        <td><%= rs.getString("Nombre")%></td>
                        <td class="text-center"><%= rs.getString("Direccion")%></td>
                        <td class="text-center"><%= rs.getString("Telefono")%></td>
                        <td class="text-center">


                            <a href="Editar.jsp?id=<%= rs.getInt("Cedula")%>" class="btn btn-primary">Editar</a>
                            <a href="Delete.jsp?id=<%= rs.getInt("Cedula")%>" class="btn btn-danger">Borrar</a>
                        </td>
                    </tr>
                    <%}%>
            </table>

            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Agregar Nuevo</button>  

        </div> 
    </body>
</html>
