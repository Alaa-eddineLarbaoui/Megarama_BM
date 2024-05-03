<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cancel Film</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #151728;
        background-size: cover;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
    }

    .navbar {
        background: rgba(7, 7, 73, 0.7);
        backdrop-filter: blur(10px);
        color: #fff;
        padding: 10px 0;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        margin-bottom: 20px;
    }

    .navbar h1 {
        margin: 0;
        font-size: 24px;
        text-align: center;
    }

    .navbar ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex;
        justify-content: center;
    }

    .navbar ul li {
        margin-right: 20px;
    }

    .navbar ul li a {
        color: #fff;
        text-decoration: none;
        font-size: 18px;
        transition: color 0.3s ease;
        display: flex;
        align-items: center;
    }

    .navbar ul li a i {
        margin-right: 5px;
    }

    .navbar ul li a:hover {
        color: #007bff;
    }

    .container-content {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background: rgba(22, 50, 140, 0.62);
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.8);
    }

    h1, h2 {
        text-align: center;
        color: #fff;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #fff;
        font-weight: bold;
    }

    input[type="text"],
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus {
        border-color: #007bff;
        outline: none;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
        border: none;
        border-radius: 5px;
        padding: 12px 20px;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .form-section{
        max-width: 600px;
        margin: 5% auto;

        background: rgba(22, 50, 140, 0.62);
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.8);
    }

    .dashboard {
        margin-top: 40px;
    }

    .stats {
        display: flex;
        justify-content: space-around;
        margin-top: 20px;
    }

    .stat-card {
        text-align: center;
        background-color: #007bff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 1);
        color: #fff;
    }
</style>
<body>
<div class="container">
    <nav class="navbar" style="display: flex; justify-content: space-around" >
        <div class="logo"><img src="https://i.ibb.co/jDDfy4M/Black-White-Simple-Monoline-Hotel-Logo.png" width="20%" height="100%" /></div>
        <ul>
            <li><a href="http://localhost:8080/Megarama_BM_war_exploded/"><i class="fas fa-home"></i> Accueil</a></li>
            <li><a href="http://localhost:8080/Megarama_BM_war_exploded/Add"><i class="fas fa-plus-circle"></i> Add film</a></li>
            <li><a href="http://localhost:8080/Megarama_BM_war_exploded/cancel"><i class="fas fa-times-circle"></i> Cancel film</a></li>
            <li><a href="http://localhost:8080/Megarama_BM_war_exploded/update"><i class="fas fa-plus-circle"></i> Update film</a></li>
        </ul>
    </nav>
<section class="form-section">
    <h2>Delete Film</h2>
    <form action="cancel" method="post">
        <label for="filmId">Enter Film ID:</label>
        <input type="text" id="filmId" name="filmId" required><br>
        <input onclick="deleted()" type="submit" value="Delete Film">
        <script type="text/javascript">
            function deleted() {
                alert("Film deleted successfully!");
            }
        </script>
    </form>
</section>
    <section class="dashboard">
        <h2>Tableau de bord</h2>
        <div class="stats">
            <div class="stat-card">
                <h3>Total des films</h3>
                <p><c:out value="${ff}"></c:out></p>
            </div>
            <div class="stat-card">
                <h3>Total des utilisateurs</h3>
                <p>500</p>
            </div>
            <div class="stat-card">
                <h3>Revenu total</h3>
                <p>100 000 $</p>
            </div>
        </div>
    </section>
</div>
</body>
</html>
