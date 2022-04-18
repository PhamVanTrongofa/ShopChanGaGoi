

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
        <title>Shop Car</title>
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
            <header class="bg-dark py-5">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">

                            <img src="image/xe.jpg" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="image/mazda2.jpg" class="d-block w-100" >
                        </div>
                        <div class="carousel-item">
                            <img src="image\ford.jpg" class="d-block w-100" >
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </header>
        </div>

        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-3 mb-5">
                        <h3  class="text-black-50" >List Categories</h3>
                        <ul class="list-group">
                            <c:forEach items="${sessionScope.listCategories}" var="C">
                                <li class="list-group-item"><a href="filter-category?categoryId=${C.id}">${C.name}</a></li>
                                </c:forEach>
                        </ul>
                    </div>




                    <div style="background-color: #eee;" class="col-md-9" >

                        <h3 class="text-black-50">List Products</h3>






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
                                      <a class="btn btn-outline-dark mt-auto" 
                                                   >Add to cart</a
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
                                        <li class="page-item"><a class="page-link" href="home?page=${page-1}">Previous</a></li>
                                            <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i == page?"active":""}"><a class="page-link" href="home?page=${i}">${i}</a></li>
                                            </c:forEach>
                                        <li class="page-item"><a class="page-link" href="home?page=${page+1}">Next</a></li>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
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
