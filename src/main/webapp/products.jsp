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
    <title>Pricing example · Bootstrap v5.0</title>
    <!-- Bootstrap core CSS -->
    <link href="bootstrap/bootstrap.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template -->
    <link href="bootstrap/css/pricing.css" rel="stylesheet">
</head>
<body>
<header class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <p class="h5 my-0 me-md-auto fw-normal">The Burguery</p>
    <nav class="my-2 my-md-0 me-md-3"><a class="p-2 text-dark" href="#">Productos</a><a class="p-2 text-dark" href="#">Carrito</a>
        <a class="p-2 text-dark" href="#">Carrito</a>
    </nav>
</header>

    <main class="container">
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4">Productos</h1>
            <p class="lead">Elige los productos</p>
        </div>
        <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
            <form action="${pageContext.request.contextPath}/SvProducts" method="POST">
            <div class="col">
                <div class="card mb-4 shadow-sm">
                    <div class="card-header">
                        <h4 class="my-0 fw-normal">Hamburguesa</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$15.000</h1>
                        <img src="bootstrap/css/107-1073199_hamburguesa-de-carne-jarris-imagen-de-una-hamburguesa.png" style="width: 60%;">
                        <ul class="list-unstyled mt-3 mb-4">
                        </ul>
                        <input type="hidden" value="Hamburguesa" name="nameFood" />
                        <input type="hidden" value="15000" name="priceFood" />
                        <button type="submit" name="burger" class="w-100 btn btn-lg btn-primary">Añadir al carrito</button>
                    </div>
                </div>
            </div>
            </form>
            <form action="${pageContext.request.contextPath}/SvProducts" method="POST">
            <div class="col">
                <div class="card mb-4 shadow-sm">
                    <div class="card-header">
                        <h4 class="my-0 fw-normal">Papas</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$3.000</h1>
                        <img src="bootstrap/css/papas-a-la-francesa-enchiladas_recetas_chef-oropeza-jpg.jpg" style="width: 102%;">
                        <ul class="list-unstyled mt-3 mb-4">
                        </ul>
                        <input type="hidden" value="Papas" name="nameFood" />
                        <input type="hidden" value="3000" name="priceFood" />
                        <button type="submit" class="w-100 btn btn-lg btn-primary">Añadir al carrito</button>
                    </div>
                </div>
            </div>
            </form>
            <form action="${pageContext.request.contextPath}/SvProducts" method="POST">
            <div class="col">
                <div class="card mb-4 shadow-sm">
                    <div class="card-header">
                        <h4 class="my-0 fw-normal">Gaseosa&nbsp;</h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title">$2.000</h1>
                        <img src="bootstrap/css/1858_1879_600W_719-gaseosa-postobon-250ml-x-12-unidades.jpg" style="width: 48%;">
                        <ul class="list-unstyled mt-3 mb-4">
                        </ul>
                        <input type="hidden" value="Gaseosa" name="nameFood" />
                        <input type="hidden" value="2000" name="priceFood" />
                        <button type="submit" class="w-100 btn btn-lg btn-primary">Añadir al carrito</button>
                    </div>
                </div>
            </div>
            </form>
        </div>
        <footer class="pt-4 my-md-5 pt-md-5 border-top">
            <div class="row">
                <div class="col-12 col-md">
                    <img class="mb-2" src="https://getbootstrap.com/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="24" height="19"><small class="d-block mb-3 text-muted">© 2017-2021</small>
                    <img src="bootstrap/css/Under-Construction-PNG-HD-Quality.png" style="width: 107%; height: 180px;">
                </div>
                <div class="col-6 col-md">
                    <div class="col">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-header">
                                <h4 class="my-0 fw-normal">Proximamente</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title"></h1>
                                <img src="bootstrap/css/Pizza-PNG-Pic.png" style="width: 107%; height: 136px;">
                                <ul class="list-unstyled mt-3 mb-4">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md">
                    <div class="col">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-header">
                                <h4 class="my-0 fw-normal">Proximamente</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title"></h1>
                                <img src="bootstrap/css/Chicken-Wings-PNG-Background-Image.png" style="width: 102%;">
                                <ul class="list-unstyled mt-3 mb-4">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md">
                    <div class="col">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-header">
                                <h4 class="my-0 fw-normal">Proximamente</h4>
                            </div>
                            <div class="card-body">
                                <h1 class="card-title pricing-card-title"></h1>
                                <img src="bootstrap/css/images.jpg" style="width: 201px;">
                                <ul class="list-unstyled mt-3 mb-4">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </main>
</form>
    </body>
</html>

