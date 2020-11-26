<%-- 
    Document   : listCat
    Created on : 24 nov. 2020, 11:16:56
    Author     : Iikt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Categor&iacute;as</title>
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
                        <li class="nav-item active">
                            <a class="nav-link" href="CategoriaServlet?accion=listaCategorias">Lista de categor&iacute;as <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="CategoriaServlet?accion=nuevo">Registrar categor&iacute;a</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <table class="table table-bordered table-hover table-dark">
                <thead>
                    <tr>
                        <th>Clave categor&iacute;a</th>
                        <th>Nombre categor&iacute;a</th>
                        <th>Descripci&oacute;n categor&iacute;a</th>
                        <th>Eliminar</th>
                        <th>Actualizar</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cat" items="${listaCategorias}">
                        <tr>
                            <td>
                                <a class="btn btn-info" href="CategoriaServlet?accion=ver&id=<c:out value="${cat.entidad.idCategoria}"/>">
                                    <c:out value="${cat.entidad.idCategoria}"/>
                                </a>
                            </td>
                            <td>
                                <c:out value="${cat.entidad.nombreCategoria}"/>
                            </td>  
                            <td>
                                <c:out value="${cat.entidad.descripcionCategoria}"/>
                            </td>  
                            <td>
                                <a class="btn btn-danger" href="CategoriaServlet?accion=eliminar&id=<c:out value="${cat.entidad.idCategoria}"/>">
                                    Eliminar
                                </a>
                            </td>
                            <td>
                                <a class="btn btn-warning" href="CategoriaServlet?accion=actualizar&id=<c:out value="${cat.entidad.idCategoria}"/>">
                                    Actualizar
                                </a>
                            </td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
    </body>
</html>
