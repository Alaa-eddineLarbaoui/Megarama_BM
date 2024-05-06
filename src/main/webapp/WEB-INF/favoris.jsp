<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Favoris</title>
    <style>
        /* Ajoutez votre CSS ici */
    </style>
</head>
<body>
<h1>Liste des favoris</h1>
<c:if test="${favorisList.size() == 0}">
    <p>Aucun favori pour le moment.</p>
</c:if>
<c:forEach var="favori" items="${favorisList}">
    <div>
        <h2>${favori.titre}</h2>
        <p>ID: ${favori.favoris_id}</p>
        <p>ID Film: ${favori.film_id}</p>
        <p>ID Utilisateur: ${favori.idUser}</p>


        <a href="/detail?favoriId=${favori.favoris_id}">Détails</a>
    </div>
    <hr>
</c:forEach>
</body>
</html>
