<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Products</title>
</head>
<body>
<h2>Available Products</h2>

<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>
                <form action="cart/add" method="post" style="display:inline;">
                    <input type="hidden" name="productId" value="${product.id}"/>
                    <input type="number" name="quantity" value="1" min="1"/>
                    <button type="submit">Add to Cart</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<br/>
<a href="cart"><button type="button">View Cart</button></a>

</body>
</html>
