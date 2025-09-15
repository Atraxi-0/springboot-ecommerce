<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Cart</title>
</head>
<body>
<h2>Your Cart</h2>
<c:if test="${not empty cartItems}">
    <table border="1">
        <tr>
            <th>Product</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="item" items="${cartItems}">
            <tr>
                <td>${item.product.name}</td>
                <td>${item.product.price}</td>
                <td>
                    <form action="cart/update" method="post">
                        <input type="hidden" name="productId" value="${item.product.id}" />
                        <input type="number" name="quantity" value="${item.quantity}" min="1"/>
                        <button type="submit">Update</button>
                    </form>
                </td>
                <td>${item.product.price * item.quantity}</td>
                <td>
                    <form action="cart/remove" method="post">
                        <input type="hidden" name="productId" value="${item.product.id}" />
                        <button type="submit">Remove</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="checkout">Proceed to Checkout</a>
    <a href="products">
    <button type="button">Continue Shopping</button>
</a>

</c:if>
<c:if test="${empty cartItems}">
    <p>Your cart is empty.</p>
</c:if>
</body>
</html>
