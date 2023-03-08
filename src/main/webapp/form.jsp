<%--
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
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">Nombres</label>
                            <input name="name" type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Apellidos</label>
                            <input name="lastName" type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>
                        <div class="col-12">
                            <label for="username" class="form-label">Usuario</label>
                            <div class="input-group"><span class="input-group-text">@</span>
                                <input name="userName" type="text" class="form-control" id="username" placeholder="Usuario" required="">
                                <div class="invalid-feedback">
                                    Your username is required.
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <label for="email" class="form-label">Contraseña</label>
                            <input name="password" type="password" class="form-control" id="email" placeholder="Contraseña">
                            <div class="invalid-feedback">
                                Please enter a valid password
                            </div>
                        </div>
                        <div class="col-12">
                            <label for="address" class="form-label">Dirección</label>
                            <input name="address" type="text" class="form-control" id="address" placeholder="Carrera 15 No. 90" required="">
                            <div class="invalid-feedback">
                                Please enter your address.
                            </div>
                        </div>
                        <div class="col-12">
                            <label for="address2" class="form-label">Telefono</label>
                            <input name="phone" type="text" class="form-control" id="address2" placeholder="317894512">
                        </div>
                        <div class="col-md-5">
                            <div class="invalid-feedback">
                                Please select a valid phone number
                            </div>
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
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>
</body>
</html>
