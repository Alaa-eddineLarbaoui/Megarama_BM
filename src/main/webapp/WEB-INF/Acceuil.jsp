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
    <style><%@ include file="style.css"%></style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<header>

    <div class="headr">
        <div><h1 class="name">MEGARAMA .</h1></div>
        <div class="nav_paremt_conatainer movieDetailnav_paremt_conatainer">
            <nav style="display: flex; flex-direction: row; width: 600px;" class="navContainer movieDetailnavContainer row">

                <form method="post" action="search" >

                    <div style="display: flex; flex-direction: row; gap:10px;">
                        <input class="search col-md-4" type="text" placeholder="Search">

                        <button class="btn btn-primary col-md-3" type="submit">Chercher</button>

                    </div>



                </form>
            </nav>
        </div>
    </div>
</header>

<div class="searchimg">



</div>
<div style="background: #03033d; height: 700px ; padding-top: 40px">
    <div class="container">
        <h1 class="title">Now Playing Movies</h1>

        <div class="resultcardd">



            <c:forEach var="film" items="${films}">

                <div class="item">
                    <img class="card-image" src="${film.getPicture()}">
                    <h1 class="text-card">${film.getTitre()}</h1>


                </div>
            </c:forEach>
        </div >

        <h1 class="title">Trending Movies</h1>

        <div >


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
    </div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
