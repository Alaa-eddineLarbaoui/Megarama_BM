<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Films Favoris</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="path/to/style.css">
</head>
<body>
<div class="container">
    <h1 class="my-5">Films Favoris</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <c:forEach var="film" items="${filmsFavoris}">
            <div class="col">
                <div class="card h-100">
                    <img src="${film.image}" class="card-img-top" alt="${film.titre}">
                    <div class="card-body">
                        <h5 class="card-title">${film.titre}</h5>
                        <p class="card-text">Genre: ${film.genre}</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">ID: ${film.id}</small>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="path/to/script.js"></script> 
</body>
</html>
