

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
        <title>Shop Bedding</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- Font Awesome 5 CSS -->
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>
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
    <body class="bg-image p-5 text-center shadow-1-strong rounded mb-5 text-white"
          style="background-image: url('image/ab.jpg');">
        <%@include file="components/navBarComponent.jsp" %>
        <!-- Header-->
        <div class="container-fluid">
            <div id="demo" class="carousel slide" data-bs-ride="carousel">

                <!-- Indicators/dots -->
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                </div>

                <!-- The slideshow/carousel -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://hanvico.com.vn/wp-content/uploads/2020/10/banner-web-2020-1420-x-625-2.jpg" alt="Los Angeles" class="d-block" style="width:100%">
                        <div class="carousel-caption">
                            <h3>Los Angeles</h3>
                            <p>We had such a great time in LA!</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://hanvico.com.vn/wp-content/uploads/2020/10/standy-hanvico-living-06-x-16m-02.jpg" alt="Chicago" class="d-block" style="width:100%">
                        <div class="carousel-caption">
                            <h3>Chicago</h3>
                            <p>Thank you, Chicago!</p>
                        </div> 
                    </div>
                    <div class="carousel-item">
                        <img src="https://demxinh.vn/public/dem/photo/2020/03/banner-0.jpg" alt="New York" class="d-block" style="width:100%">
                        <div class="carousel-caption">
                            <h3>New York</h3>
                            <p>We love the Big Apple!</p>
                        </div>  
                    </div>
                </div>

                <!-- Left and right controls/icons -->
                <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>


        </div>

        <!-- Section-->
        <section class="py-5">


            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-3 mb-5">
                        <div class="card" style="background-color: #eee;">
                            <h3  class="text-black-50" >List Categories</h3>
                            <ul class="list-group">
                                <c:forEach items="${sessionScope.listCategories}" var="C">
                                    <li class="list-group"><a href="listcategory?categoryId=${C.id}">${C.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>





                    <div style="background-color: #eee;" class="col-md-9" >

                        <h3 class="text-black-50">List Products</h3>




                         <c:choose>
                            <c:when test="${listProducts==null || listProducts.size()==0}">
                                Not founds
                            </c:when>    
                            <c:otherwise>
                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                    <ul class="pagination">
                                        <li class="page-item">
                                            <a class="page-link"  href="home?page=${page-1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i == page?"active":""}"><a class="page-link" href="home?page=${i}">${i}</a></li>
                                            </c:forEach>
                                        <li class="page-item">
                                            <a class="page-link" href="home?page=${page+1}" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>      

                        <div
                            class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center"
                            >

                            <c:forEach items="${listProducts}" var="P">

                                <div class="card" style="width: 18rem; margin-top: 1cm; margin-left: 0.3cm; margin-right: 0.05cm" >
                                    <p class="text-center text-black">${P.id}</p> 
                                    <img src="${P.imageUrl}" class="card-img-top" alt="...">
                                    <div class="card-body">

                                        <h5 class="text-dark" class="card-title">${P.name}</h5>

                                        <p class="card-text text-black">${P.description}</p>
                                        <div
                                            class="d-flex justify-content-center small text-warning mb-2"
                                            >
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                        </div>
                                        <h6 class="text-dark" class="card-title">$${P.price}</h6>
                                        <a class="btn btn-outline-dark mt-auto" href="addtocart?productId=${P.id}"
                                           ><i class="bi bi-bag-plus"></i> Add to cart</a
                                        >
                                    </div>
                                </div>

                            </c:forEach>
                        </div>



                        <c:choose>
                            <c:when test="${listProducts==null || listProducts.size()==0}">
                                Not founds
                            </c:when>    
                            <c:otherwise>
                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                    <ul class="pagination">
                                        <li class="page-item">
                                            <a class="page-link"  href="home?page=${page-1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i == page?"active":""}"><a class="page-link" href="home?page=${i}">${i}</a></li>
                                            </c:forEach>
                                        <li class="page-item">
                                            <a class="page-link" href="home?page=${page+1}" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>      



                        
                    </div>
                </div>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <!-- Bootstrap 5 JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!--         <script>
                                                            function addToCartAsync(productId) {
                                                                axios.get('add-to-cart-async', {
                                                                    params: {
                                                                        productId: productId
                                                                    }
                                                                }).then((response) => {
                                                                    //lấy data thanh công
                                                                    document.getElementById("cart_number").innerHTML = response.data;
        
                                                                    //Cập nhật view
                                                                })
                                                            }
                </script>-->
    </body>
</html>
