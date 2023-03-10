<%@ page import="java.util.List" %>
<%@ page import="com.example.pagina.proyecto.model.Client" %><%--
  Created by IntelliJ IDEA.
  User: Cristhian
  Date: 9/03/2023
  Time: 6:36 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="bg-secondary container vh-100 w-50">
    <%
        List<Client> dataBaseClient = (List) request.getSession().getAttribute("dataBaseClient");
        for (Client client : dataBaseClient) {
    %>
    <p><b>Clientes</b></p>
    <p>Nombre: <%=client.getName()%></p>
    <p>Apellido: <%=client.getLastName()%></p>
    <p>Usuario: <%=client.getUsername()%></p>
    <p>Dirección: <%=client.getAddress()%></p>
    <p>Teléfono: <%=client.getPhoneNumber()%></p>
    <p>------------------------</p>
    <%}%>
</div>
</body>
</html>
