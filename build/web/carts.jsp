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
        <%@include file="components/navBarComponent.jsp" %>

        <!-- Product section-->
        <section class="py-5">
            <div class="container" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem ">
                <div class="max-w-md mx-auto bg-gray-100 shadow-lg rounded-lg md:max-w-5xl">
                <c:choose>
                    <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                        <h1 class="text-center">Your Cart is Empty</h1>
                    </c:when>
                    <c:otherwise>
                        <h3>List Products</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="colgroup">ID</th>
                                    <th scope="colgroup">Image</th>
                                    <th scope="colgroup">Name</th>
                                    <th scope="colgroup">Price</th>
                                    <th scope="colgroup">Quantity</th>
                                    <th scope="colgroup">Total Price</th>
                                    <th scope="colgroup">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C">
                                <form action="upda">
                                    <tr>
                                    <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                        <th scope="row">${C.value.product.id}</th>
                                        <td><img src="${C.value.product.imageUrl}" width="50"/></td>
                                        <td>${C.value.product.name}</td>
                                        <td>${C.value.product.price}</td>
                                        <td><input onchange="this.form.submit()" type="number" name="quantity" value="${C.value.quantity}"/></td>
                                        <td>${C.value.product.price*C.value.quantity}</td>
                                        <td><a href="delete?productId=${C.value.product.id}" style="border-radius:75rem;" class="btn btn-outline-danger"><i class="bi bi-bag-x"></i></i> Delete</a></td>
                                        
                                    </tr>
                                </form>
                            </c:forEach>
<!--here-->
                            </tbody>
                        </table>
                        <h3>Total Amount: $${totalMoney}</h3>
                        <a href="checkout" style="border-radius:75rem;"  class="btn btn-outline-danger  w-25">Check out</a>
                    </c:otherwise>
                </c:choose>
            </div>
                </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
    <!--     <td><a  href="deleteall?carts=${carts}" class="btn btn-outline-danger" ><i class="bi bi-trash"></i>DeleteALL</a></td>-->
</html>
