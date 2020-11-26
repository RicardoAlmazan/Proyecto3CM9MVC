<%-- 
    Document   : ver
    Created on : 25 nov. 2020, 11:36:47
    Author     : Iikt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <nav class="navbar navbar-dark bg-dark">
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="" >
                        Categor&iacute;as
                    </a>
                </nav>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="CategoriaServlet?accion=listaCategorias">Lista de categor&iacute;as</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="CategoriaServlet?accion=nuevo">Registrar categor&iacute;a</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="card border-dark mb-3">
                <div class="card-header">
                    <h3>Datos de la categor&iacute;a</h3>
                </div>
                <div class="card-body text-dark">
                    <ul class="list-group">
                        <li class="list-group-item"><b>Clave categor&iacute;a:</b> <c:out value="${cat.entidad.idCategoria}"/></li>
                        <li class="list-group-item"><b>Nombre categor&iacute;a:</b> <c:out value="${cat.entidad.nombreCategoria}"/></li>
                        <li class="list-group-item"><b>Descripci&oacute;n categor&iacute;a:</b> <c:out value="${cat.entidad.descripcionCategoria}"/></li>
                    </ul>
                </div>
            </div>

        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
    </body>
