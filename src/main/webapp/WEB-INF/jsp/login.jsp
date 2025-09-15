<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body { font-family: Arial, sans-serif; }
    .container { width: 300px; margin: 100px auto; }
    .register-box { border: 1px solid #ccc; padding: 20px; border-radius: 10px; }
    label, input, button { display: block; margin: 10px 0; width: 100%; }
    .error { color: red; font-size: 14px; }
</style>
</head>
<body>
<div class="container">
    <div class="register-box">
        <h2>Login</h2>
        <p class="subtitle">Login to your Account</p>

        <form action="login" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>


            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <button type="submit" class="register-btn">Login</button>
        </form>
    </div>
</div>
</body>
</html>
