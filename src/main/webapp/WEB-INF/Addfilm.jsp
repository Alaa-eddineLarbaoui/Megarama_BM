<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Film - Cinema</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url(https://th.bing.com/th/id/OIP.G3w7KeLSJOMqLBtqr8anuQHaFj?rs=1&pid=ImgDetMain);
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
</head>
<body>
<div class="container">
    <nav class="navbar" style="display: flex; justify-content: space-around" >
        <div class="logo"><img src="https://i.ibb.co/jDDfy4M/Black-White-Simple-Monoline-Hotel-Logo.png" width="20%" height="100%" /></div>
        <ul>
            <li><a href="http://localhost:8080/Megarama_Cinema_BM_war_exploded/"><i class="fas fa-home"></i> Accueil</a></li>
            <li><a href="http://localhost:8080/Megarama_Cinema_BM_war_exploded/Add"><i class="fas fa-plus-circle"></i> Add film</a></li>
            <li><a href="http://localhost:8080/Megarama_Cinema_BM_war_exploded/cancel"><i class="fas fa-times-circle"></i> Cancel film</a></li>
            <li><a href="http://localhost:8080/Megarama_Cinema_BM_war_exploded/update"><i class="fas fa-plus-circle"></i> Update film</a></li>
        </ul>
    </nav>

    <div class="container-content">
        <h2>Ajouter un film</h2>
        <form action="Add" method="post">
            <label for="film_title">Titre du film :</label>
            <input type="text" id="film_title" name="titre" required><br>
            <label for="film_director">Réalisateur :</label>
            <input type="text" id="film_director" name="director" required><br>
            <label for="film_genre">Genre :</label>
            <input type="text" id="film_genre" name="genre" required><br>
            <label for="film_duration">Durée :</label>
            <input type="text" id="film_duration" name="duration" required><br>
            <label for="film_synopsis">Synopsis :</label>
            <input type="text" id="film_synopsis" name="synopsis" required><br>
            <label for="background_Url">Background URL:</label><br>
            <input type="text" id="background" name="background_Url"  required><br>
            <label for="trailler_url">Trailer URL:</label><br>
            <input type="text" id="trailler" name="trailler_url"  required><br>
            <label for="film_picture">URL de l'image :</label>
            <input type="text" id="film_picture" name="picture" required><br>
            <input onclick="filmAdded()" type="submit" value="Ajouter le film">
            <script type="text/javascript">
                function filmAdded() {
                    alert("Film ajouté avec succès !");
                }
            </script>
        </form>
    </div>

    <section class="dashboard">
        <h2>Tableau de bord</h2>
        <div class="stats">
            <div class="stat-card">
                <h3>Total des films</h3>
                <p>50</p>
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
