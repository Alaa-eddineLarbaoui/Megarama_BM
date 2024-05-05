<%@ page pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Log In</title>
    <style>
        <%@ include file="./loginStyle.css" %>
    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form method="post" action="">
        <div class="input-group">
            <label for="Email">Email</label>
            <input type="text" id="Email" name="Email" required>
        </div>
        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Login</button>
    </form>
    <p style="color: red">${error}</p>
    <p>Don't have an account? <a href="SignUp">Sign Up</a></p>
</div>
</body>
</html>
