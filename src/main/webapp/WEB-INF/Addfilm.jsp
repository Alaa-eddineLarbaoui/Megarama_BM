<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Film</title>
    <style><%@ include file="Admin.css"%></style>
</head>

<body>
<div class="container">
    <h1>Megarama Béni Mellal</h1>
    <h2>Add Film</h2>
    <form action="Add" method="post">
        The Title of the Film: <input type="text" name="titre"><br>
        The Film Director: <input type="text" name="director"><br>
        The Genre of Movie: <input type="text" name="genre"><br>
        Film Duration: <input type="text" name="duration"><br>
        Movie Synopsis: <input type="text" name="synopsis"><br>
        url of picture: <input type="text" name="picture"><br>

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
