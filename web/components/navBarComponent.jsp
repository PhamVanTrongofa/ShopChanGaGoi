
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
            >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <a class="navbar-brand" href="#">
                    <img  src="image/car_logo.jpg" width="60" />
                </a>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
               
                <li class="nav-item dropdown">
                    <a
                        class="nav-link dropdown-toggle"
                        id="navbarDropdown"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                        >Shop</a
                    >
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="listall">All Products</a></li>
                       
                        
                    </ul>
                </li>
            </ul>
            <form action="search" class="d-flex mx-auto">
                <input
                    class="form-control me-2"
                    type="search"
                    placeholder="Search"
                    aria-label="Search"
                    name="keyword"
                    />
                <button class="btn btn-outline-success" type="submit">
                    Search
                </button>
            </form>
            <div class="d-flex my-2">
                <a class="btn btn-outline-dark" href="carts">
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span id="cart_number" class="badge bg-info text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                </a>
            </div>
                
            <c:choose>
                <c:when test="${sessionScope.account != null}">
                    <button class="btn btn-outline-primary ms-lg-2">${sessionScope.account.displayName}</button>
                     <a href="Logout" class="btn btn-success-primary ms-lg-2">Logout</a>
                </c:when>
                <c:otherwise>
                    <a href="Login" class="btn btn-success ms-lg-2">Login</a>
                </c:otherwise>

            </c:choose>

        </div>
    </div>
</nav>
