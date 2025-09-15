<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
    body { font-family: Arial, sans-serif; }
    .container { width: 300px; margin: 100px auto; }
    .register-box { border: 1px solid #ccc; padding: 20px; border-radius: 10px; }
    label, input, button { display: block; margin: 10px 0; width: 100%; }
    .error { color: red; font-size: 14px; }
    .success { color: green; font-size: 14px; }
</style>
</head>
<body>
<div class="container">
    <div class="register-box">
        <h2>Register</h2>
        <p class="subtitle">Create your account</p>

        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        <c:if test="${not empty success}">
            <p class="success">${success}</p>
        </c:if>

        <form action="register" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter password" required>

            <button type="submit" class="register-btn">Register</button>
        </form>

        <p>Already have an account? <a href="/">Login here</a></p>
    </div>
</div>
</body>
</html>
