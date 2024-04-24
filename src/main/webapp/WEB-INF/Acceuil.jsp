<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23/04/2024
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <style><%@ include file="style.css"%></style>
    <title>Document</title>
</head>
<body>



<div class="rounded m-5 check-availabilty" id="next">
    <form id="formCheck" method="post" action="search" class="form-checking row" >


        <div class="nav_paremt_conatainer movieDetailnav_paremt_conatainer">
            <nav class="navContainer movieDetailnavContainer">

                <input class="search" type="text" placeholder="Search " name="title">

            </nav>
        </div>
        <button type="submit">Chercher</button>



    </form>
</div>



<div class="resultcardd">



        <c:forEach var="film" items="${films}">

            <div class="cardd">
                <img class="cardd-image" src="${film.getPicture()}">
                <h1 class="textt-card">${film.getTitre()}</h1>
                <a href="#" class="details btn btn-primary">Details</a>

            </div>
        </c:forEach>
    </div>



<div class="container">


    <div class="row">
        <c:forEach var="films" items="${filmSe}">

                <div class="card">
                    <img src="${films.getPicture()}" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${films.getTitre()}</h5>

                        <a href="#" class="btn btn-primary">details</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


</body>
</html>
