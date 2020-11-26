<%-- 
    Document   : categoriaForm
    Created on : 25 nov. 2020, 10:52:46
    Author     : Iikt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categor&iacute;a Form</title>
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
                        <li class="nav-item active">
                            <a class="nav-link" href="CategoriaServlet?accion=nuevo">Registrar categor&iacute;a <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div>
                <div class="card-header bg-dark">
                    <h3 class="text-white">Datos de la categor&iacute;a</h3>
                </div>
                <div class="card-body">
                    <form action="CategoriaServlet?accion=guardar" method="post" name="frmCategoriaForm" id="frmCategoriaForm">
                        <input type="hidden" name="id" id="id" value="<c:out value="${dto.entidad.idCategoria}"/>"/>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <label class="col-sm-2 col-form-label">Nombre</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="txtNombre" id="txtNombre" maxlength="50" required="true" placeholder="Nombre de la categor&iacute;a"
                                       class="form-control" value="<c:out value="${dto.entidad.nombreCategoria}"/>"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <label class="col-sm-2 col-form-label">Descripci&oacute;n</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="txtDescripcion" id="txtDescripcion" maxlength="50" required="true" placeholder="Descripci&oacute;n de la categor&iacute;a"
                                       class="form-control" value="<c:out value="${dto.entidad.descripcionCategoria}"/>"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
    </body>
</html>
