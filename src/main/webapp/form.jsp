<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Cristhian
  Date: 7/03/2023
  Time: 2:47 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Checkout example · Bootstrap v5.0</title>
    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container">
    <main>
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="bootstrap/css/comida-y-bebida-imagen-animada-0151.gif" alt="" width="72" height="57">
            <h2>Formulario</h2>
            <p class="lead">Crear un nuevo usuario para poder hacer pedidos en la pagina web</p>
        </div>
        <div class="row g-3" style="flex-direction: column; align-items: center;">
            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">Datos personales</h4>
                <form action="${pageContext.request.contextPath}/SvForm" method="POST" class="needs-validation" novalidate="">
                    <%
                        Map<String,String> mistakeList = (Map<String, String>) request.getSession().getAttribute("mistakeList");
                    %>
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">Nombres</label>
                            <input name="name" type="text" class="form-control" id="firstName" placeholder="">
                            <%
                                if(mistakeList != null && mistakeList.containsKey("name")) {
                                    mistakeList.get("name");
                            %>
                            <div class="alert alert-danger">Nombre valido requerido</div>
                            <%}%>
                        </div>
                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Apellidos</label>
                            <input name="lastName" type="text" class="form-control" id="lastName" placeholder="">
                            <%
                                if(mistakeList != null && mistakeList.containsKey("lastName")) {
                            %>
                            <div class="alert alert-danger">Apellido valido requerido</div>
                            <%}%>
                        </div>
                        <div class="col-12">
                            <label for="username" class="form-label">Usuario</label>
                            <div class="input-group"><span class="input-group-text">@</span>
                                <input name="userName" type="text" class="form-control" id="username" placeholder="Usuario">
                            </div>
                            <%
                                if(mistakeList != null && mistakeList.containsKey("userName")) {
                            %>
                            <div class="alert alert-danger">Nombre de usuario valido requerido</div>
                            <%}%>
                        </div>
                        <div class="col-12">
                            <label for="email" class="form-label">Contraseña</label>
                            <input name="password" type="password" class="form-control" id="email" placeholder="Contraseña">
                            <%
                                if(mistakeList != null && mistakeList.containsKey("password")) {
                            %>
                            <div class="alert alert-danger">Contraseña valida requerida</div>
                            <%}%>
                        </div>
                        <div class="col-12">
                            <label for="address" class="form-label">Dirección</label>
                            <input name="address" type="text" class="form-control" id="address" placeholder="Carrera 15 No. 90" >
                            <%
                                if(mistakeList != null && mistakeList.containsKey("address")) {
                            %>
                            <div class="alert alert-danger">Dirección válida requerida</div>
                            <%}%>
                        </div>
                        <div class="col-12">
                            <label for="address2" class="form-label">Telefono</label>
                            <input name="phone" type="text" class="form-control" id="address2" placeholder="317894512">
                            <%
                                if(mistakeList != null && mistakeList.containsKey("phone")) {
                            %>
                            <div class="alert alert-danger">Teléfono valido requerido</div>
                            <%}%>
                        </div>
                    </div>
                    <hr class="my-4">
                    <button class="w-100 btn btn-primary btn-lg" type="submit">Guardar</button>
                </form>
            </div>
        </div>
    </main>
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2023 The Burgery</p>
    </footer>
</div>
<script src="assets/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
