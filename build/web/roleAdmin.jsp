<%@page import="model.Product"%>
<%@page import="java.util.List"%>
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
    <body class="bg-image p-5 text-center shadow-1-strong rounded mb-5 text-black"
          style="background-image: url('image/ab.jpg');">
        <%@include file="components/navBarComponent.jsp" %>
        <!-- Header-->
       

        <!-- Section-->
        <section class="py-5">






            <div style="background-color: #eee;" class="col-md-12" >

                <h3 class="text-black-50">List Products</h3>



                <c:choose>
                    <c:when test="${listProducts==null || listProducts.size()==0}">
                        Not founds
                    </c:when>    
                    <c:otherwise>
                        <nav aria-label="Page navigation example" class="d-flex justify-content-center" >
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link"  href="listfor?page=${page-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${i == page?"active":""}"><a class="page-link"href="listfor?page=${i}">${i}</a></li>
                                    </c:forEach>
                                <li class="page-item">
                                    <a class="page-link"href="listfor?page=${page+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </c:otherwise>
                </c:choose>  


                        <div class="d-flex justify-content-center" 
                    
                    >
                    <table border ="1">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>quantity</th>
                            <th>Price</th>
                           
                            <th>createdDate</th>
                            <th>Action</th>

                        </tr>
                        <c:forEach items="${listProducts}" var="o">
                            <tr>
                                <td>${o.id}</td>
                                <td>${o.name}</td>
                                <td>${o.quantity}</td>
                                <td>${o.price}</td> 
                                
                                <td>${o.createdDate}</td>  
                                <td><a href="admin/updateProduct?id=${o.id}">Update</a> 
                                    <a   href="#"onclick="showMess(${o.id})" >Delete</a>
                                </td>
                            </tr>        

                        </c:forEach>   

                    </table>

                </div>
                <c:choose>
                    <c:when test="${listProducts==null || listProducts.size()==0}">
                        Not founds
                    </c:when>    
                    <c:otherwise>
                        <nav aria-label="Page navigation example" class="d-flex justify-content-center" >
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link"  href="listfor?page=${page-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${i == page?"active":""}"><a class="page-link"href="listfor?page=${i}">${i}</a></li>
                                    </c:forEach>
                                <li class="page-item">
                                    <a class="page-link"href="listfor?page=${page+1}" aria-label="Next">
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
        <script>
        function showMess(id){
            var option = confirm("Are u sure to delete this Product");
            if(option === true){
                window.location.href = 'deleteproducts?id=' + id;
            }
        }
    </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
