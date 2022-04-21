<%-- 
    Document   : login
    Created on : 21-04-2022, 11:18:56
    Author     : Pham Van Trong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Bedding - Login</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <section class="vh-100"  style="background-image: url('https://i.pinimg.com/564x/7c/ff/48/7cff48828ba5589d790e158f594d6961.jpg');">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img
                                        src="https://i.pinimg.com/736x/21/a7/65/21a7650b97e4cf759b8aa5692c163a9d.jpg"
                                        alt="login form"
                                        class="img-fluid" style="border-radius: 1rem 0 0 1rem;"
                                        />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <form action="login" method="POST">

                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>

                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                            <div class="form-outline mb-4">
                                                <input name="username" type="text" id="username" class="form-control form-control-lg " />
                                                <label class="form-label" for="username">Username</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input name="password" type="password" id="password" class="form-control form-control-lg" />
                                                <label class="form-label" for="password">Password</label>
                                            </div>
                                            <div class="mb-3 form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
                                                <label class="form-check-label" for="exampleCheck1">Remember me</label>
                                            </div>
                                            <div class="pt-1 mb-4">
                                                <h3 class="text-danger">${error}</h3>
                                                <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                                            </div>

                                            <!--                  <a class="small text-muted" href="#!">Forgot password?</a>
                                                              <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="#!" style="color: #393f81;">Register here</a></p>
                                                              <a href="#!" class="small text-muted">Terms of use.</a>
                                                              <a href="#!" class="small text-muted">Privacy policy</a>-->
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>





        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>