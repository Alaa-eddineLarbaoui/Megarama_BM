<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Film - Cinema XYZ</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: rgb(14, 14, 37);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            text-align: center;
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
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
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Megarama</h1>
    <h2>Add Film</h2>
    <form action="add_film.php" method="post">
        <label for="film_title">Film Title:</label>
        <input type="text" id="film_title" name="film_title" required><br>
        <label for="film_director">Director:</label>
        <input type="text" id="film_director" name="film_director" required><br>
        <label for="film_genre">Genre:</label>
        <input type="text" id="film_genre" name="film_genre" required><br>
        <label for="film_duration">Duration:</label>
        <input type="text" id="film_duration" name="film_duration" required><br>
        <label for="film_synopsis">Synopsis:</label>
        <input type="text" id="film_synopsis" name="film_synopsis" required><br>
        <label for="film_picture">Image URL:</label>
        <input type="text" id="film_picture" name="film_picture" required><br>
        <input onclick="added()" type="submit" value="Add film">
        <script type="text/javascript">
            function added(){
                alert("Film added successfully!")
            }
        </script>
    </form>
</div>
</body>
</html>

