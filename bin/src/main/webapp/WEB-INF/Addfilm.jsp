<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Film</title>
</head>
<body>
<h1>Megarama Béni Mellal</h1>
<h2>Add Films</h2>
<form action="AddFilm" method="post">
    Film Id: <input type="text" name="film_id"><br>
    The Title of the Film: <input type="text" name="titre"><br>
    The Film Director: <input type="text" name="director"><br>
    The Genre of Movie: <input type="text" name="genre"><br>
    Film Duration: <input type="text" name="duration"><br>
    Movie Synopsis: <input type="text" name="synopsis"><br>
    <input type="submit" value="Add film">
</form>
</body>
</html>
