<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Checkout</title>
</head>
<body>
<h2>Checkout</h2>
<c:if test="${not empty cartItems}">
    <table border="1">
        <tr>
            <th>Product</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        <c:set var="grandTotal" value="0" />
        <c:forEach var="item" items="${cartItems}">
            <tr>
                <td>${item.product.name}</td>
                <td>${item.product.price}</td>
                <td>${item.quantity}</td>
                <td>${item.product.price * item.quantity}</td>
            </tr>
            <c:set var="grandTotal" value="${grandTotal + (item.product.price * item.quantity)}" />
        </c:forEach>
        <tr>
            <td colspan="3">Grand Total</td>
            <td>${grandTotal}</td>
        </tr>
    </table>
    <form action="cart/clear" method="post">
        <button type="submit">Pay & Clear Cart</button>
    </form>

    <a href="products">
        <button type="button">Continue Shopping</button>
    </a>

</c:if>
<c:if test="${empty cartItems}">
    <p>Your cart is empty.</p>
</c:if>
</body>
</html>
