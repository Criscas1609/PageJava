<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Signin Template · Bootstrap v5.0</title>
    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="bootstrap/css/sign-in.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica&display=swap">
</head>
<body class="d-flex flex-row-reverse text-center">
<form action="${pageContext.request.contextPath}/SvLogin" method="POST" class="h-auto text-center w-50" style="align-self: center;">
    <img src="bootstrap/css/comida-y-bebida-imagen-animada-0151.gif">
    <h1 class="h3 mb-3 text-capitalize"></h1>
    <h1 class="h3 mb-3 text-capitalize">Ingreso usuarios registrados</h1>
    <label for="inputEmail" class="visually-hidden">Email address</label>
    <input type="text" id="inputEmail" name="userName" class="d-inline-flex form-control text-center w-75" required="" autofocus="" placeholder="Usuario">
    <label for="inputPassword"  class="visually-hidden">Password</label>
    <input type="password" id="inputPassword" name="password" class="d-inline-flex form-control text-center w-75" required="" placeholder="Contrase&ntilde;a">
    <div class="checkbox mb-3">
    </div>
    <button class="btn btn-lg btn-primary text-center w-75" type="submit">Entre</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2023</p>
    <a href="${pageContext.request.contextPath}/form.jsp">Reg&iacute;strese</a>
</form>
<form action="${pageContext.request.contextPath}/SvLogin" method="GET" class="h-auto text-center w-50" style="align-self: center;">
    <button class="btn btn-lg btn-primary text-center w-75" type="submit">Base de datos</button>
</form>
<script src="assets/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<div class="container vh-100 w-50">
    <img src="bootstrap/css/carteles-de-comida-y-r%C3%A1pida-ingredientes-men%C3%BA-hamburguesa-verduras-en-rodajas-bollo-chuleta-queso-carne-tocino-caricatura-211217880.jpg" class="h-100 rounded w-100">
</div>
</body>
</html>