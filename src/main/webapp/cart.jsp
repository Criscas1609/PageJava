<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.pagina.proyecto.model.Client" %>
<%@ page import="com.example.pagina.proyecto.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: Cristhian
  Date: 8/03/2023
  Time: 10:34 a. m.
  To change this template use File | Settings | File Templates.
--%>
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
  <link href="bootstrap/css/cart.css" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica&display=swap">
</head>
<form class="h-auto text-center w-50" style="align-self: center;" action="${pageContext.request.contextPath}/SvCart" method="post">
<body class="d-flex flex-row-reverse text-center">
<%
  List<Client> userList = (List) request.getSession().getAttribute("userList");
  List<Product> productList = (List) request.getSession().getAttribute("productsList");
  for (Client client : userList) {

    %>
  <h1 class="h3 mb-3 text-capitalize"></h1>
  <h1 class="h3 mb-3 text-capitalize">Datos Personales </h1>
  <h1 class="h3 mb-3 text-capitalize">Nombre: <%= client.getName() %></h1>
  <h1 class="h3 mb-3 text-capitalize">Apellido: <%= client.getLastName() %></h1>
  <h1 class="h3 mb-3 text-capitalize">Direccion: <%= client.getAddress() %></h1>
  <h1 class="h3 mb-3 text-capitalize">Telefono: <%= client.getPhoneNumber() %></h1>
  <div class="checkbox mb-3">
  </div>
<%}%>
  <button class="btn btn-lg btn-primary text-center w-75" onclick="alert('Pedido hecho con éxito, mas instrucciones al WhatsApp')"
          href="/index.jsp" >Hacer pedido</button>


<p class="mt-5 mb-3 text-muted">&copy; 2023</p>
</form>
<script src="assets/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<div class="bg-secondary container vh-100 w-50">
  <%
    Double count =0.0;
    for (Product food : productList) {
      count=count+ food.getPrice();
  %>
  <p><b>Producto</b></p>
  <p>Nombre <%=food.getProduct()%></p>
  <p>Precio <%=food.getPrice()%></p>
  <p>------------------------</p>
  <%}%>
  <p>Total <%=count%></p>
</div>
</body>
</html>
