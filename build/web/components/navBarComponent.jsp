
<%@page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<nav   class="navbar navbar-expand-lg navbar-light bg-gradient "   >
    <div class="container px-4 px-lg-5"  >

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
                    <img class="rounded-circle"  src="image/po.png" width="60" />
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
                        <li><a class="dropdown-item" href="listfor">All Products(Only for Admin)</a></li>
                        <li><a class="dropdown-item" href="admin/repair">Insert(Only for Admin)</a></li>
                       
                        
                    </ul>
                </li>
            </ul>
            <form action="sreach" class="d-flex mx-auto">
                <div class="input-group mb-3" >
                    <input  name="keyword" type="text" class="form-control form-control-lg" placeholder="Search Here">
                    <button type="submit" class="input-group-text btn-outline-info"><i class="bi bi-search me-2"></i> Search</button>
                </div>
            </form>

          
      
            <div class="d-flex my-2">
                <a class="btn btn-outline-dark" href="carts" style="border-radius:75rem;" >
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span  id="cart_number" class="badge bg-info text-white ms-1 rounded-pill" >${sessionScope.carts.size()}</span>
                </a>
            </div>
                
            <c:choose>
                <c:when test="${sessionScope.account != null}">
                    <button style="border-radius:75rem;"  class="btn btn-outline-primary ms-lg-2">${sessionScope.account.displayName}</button>
                     <a href="logout" style="border-radius:75rem;"  class="btn btn-outline-dark ms-lg-2">Logout</a>
                </c:when>
                <c:otherwise>
                    <a href="login"  style="border-radius:75rem;" class="btn btn-outline-dark ms-lg-2" >Login</a>
                </c:otherwise>

            </c:choose>

        </div>
    </div>
</nav>
