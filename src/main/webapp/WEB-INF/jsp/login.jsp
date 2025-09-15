<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body { font-family: Arial, sans-serif; background-color: #f2f2f2; }
    .container { width: 350px; margin: 100px auto; }
    .register-box { background: #fff; border: 1px solid #ccc; padding: 25px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
    h2 { text-align: center; }
    label, input, button { display: block; margin: 10px 0; width: 100%; }
    button { background-color: #4CAF50; color: white; border: none; padding: 10px; cursor: pointer; }
    button:hover { background-color: #45a049; }
    .error { color: red; font-size: 14px; text-align: center; }
    .success { color: green; font-size: 14px; text-align: center; }
    .register-link { text-align: center; margin-top: 15px; }
    .register-link a { text-decoration: none; color: #333; }
    .register-link a:hover { text-decoration: underline; }
</style>
</head>
<body>
<div class="container">
    <div class="register-box">
        <h2>Login</h2>
        <p class="subtitle">Login to your Account</p>

        <!-- Login form -->
        <form action="login" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <button type="submit" class="login-btn">Login</button>
        </form>

        <!-- Link to registration page -->
        <div class="register-link">
            <p>Don't have an account? <a href="register">Register here</a></p>
        </div>

        <!-- Display error or success messages -->
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <c:if test="${not empty success}">
            <p class="success">${success}</p>
        </c:if>
    </div>
</div>
</body>
</html>
