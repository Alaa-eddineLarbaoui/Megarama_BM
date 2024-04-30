<%@ page pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Sign Up</title>
    <style>
        <%@ include file="./signUpStyle.css" %>
    </style>
</head>
<body>
<div class="signup-container">
    <h2>Sign Up</h2>
    <form method="post" action="testSignUp">
        <div class="input-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required >
        </div>
        <div class="input-group">
            <label for="confirmEmail">Confirm Your Email</label>
            <input type="email" id="confirmEmail" name="confirmEmail" required>
        </div>
        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Sign Up</button>
    </form>
    <p style="color: red">${error}</p>
    <p style="color: green">${succes}</p>
    <p>Already have an account? <a href="LogIn">Login</a></p>
</div>
</body>
</html>
