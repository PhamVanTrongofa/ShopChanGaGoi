<%-- 
    Document   : Update
    Created on : 20-04-2022, 13:39:24
    Author     : Pham Van Trong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <h3>Insert Product</h3>
       <form action="repair" method="POST">
            <table>
                <input type="hidden" name="id" value="" /></td>
                <tr>
                    <td>name</td>
                    <td><input type="text" name="name" value="" /></td>
                </tr>
                <tr>
                    <td>quantity</td>
                    <td><input type="text" name="quantity" value="" /></td>
                </tr>
                <tr>
                    <td>price</td>
                    <td><input type="text" name="price" value="" /></td>
                </tr>
                <tr>
                    <td>description</td>
                    <td><input type="text" name="description" value="" /></td>
                </tr>
                <tr>
                    <td>imageUrl</td>
                    <td><input type="text" name="imageUrl" value="" /></td>
                </tr>
                <tr>
                    <td>createdDate</td>
                    <td><input type="text" name="createdDate" value="" /></td>
                </tr>
                
                
                <tr>
                    <td>categoryId</td>
                    <td>
                        <select name="categoryId">
                            <c:forEach items="${listCategory}" var="C">
                                <option ${C.id == product.categoryId ?"selected":""} value="${C.id}">${C.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Save"/></td>
                </tr>
            </table>

        </form>
    </body>
</html>
