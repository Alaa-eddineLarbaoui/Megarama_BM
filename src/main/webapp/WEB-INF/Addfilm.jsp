<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Film</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>


body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1, h2 {
    text-align: center;
}

form {
    margin-top: 20px;
}

input[type="text"],
input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

</style>
<body>
<div class="container">
    <h1>Megarama Béni Mellal</h1>
    <h2>Add Film</h2>
    <form action="Add" method="post">
        Film Id: <input type="text" name="film_id"><br>
        The Title of the Film: <input type="text" name="titre"><br>
        The Film Director: <input type="text" name="director"><br>
        The Genre of Movie: <input type="text" name="genre"><br>
        Film Duration: <input type="text" name="duration"><br>
        Movie Synopsis: <input type="text" name="synopsis"><br>
        <input type="submit" value="Add film">
    </form>
</div>
</body>
</html>
