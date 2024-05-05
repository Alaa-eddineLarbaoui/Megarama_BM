<%--
  Created by IntelliJ IDEA.
  User: selma
  Date: 05/05/2024
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style><%@ include file="log.css"%></style>
</head>
<body>
<header>

    <div class="headr">
        <div class="logo"><img src="https://i.ibb.co/jDDfy4M/Black-White-Simple-Monoline-Hotel-Logo.png" width="100%" /></div>
        <div class="nav_paremt_conatainer movieDetailnav_paremt_conatainer">
            <nav style="display: flex; flex-direction: row; width: 600px;" class="navContainer movieDetailnavContainer row">

            </nav>
        </div>
    </div>
</header>
<section>

    <div class="login-box">
        <form method="post" action="testSignUp">
            <h2>Sign Up</h2>
            <div class="input-box">
                <span class="icon"><ion-icon name="mail"></ion-icon></span>
                <input type="email" name="email" required>
                <label>Email</label>
            </div>

            <div class="input-box">
                <span class="icon"><ion-icon name="mail"></ion-icon></span>
                <input type="email" name="confirmEmail" required>
                <label>Confirm your email address </label>
            </div>

            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                <input type="password"  name="password" required>
                <label>Password</label>
            </div>

            <button type="submit">Sign Up</button>
            <p style="color: red">${error}</p>
            <p style="color: green">${succes}</p>
            <div class="register-link">
                <p>Do you have an account?<a href="Log"> Log in</a></p>
            </div>




        </form>


    </div>
</section>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>
