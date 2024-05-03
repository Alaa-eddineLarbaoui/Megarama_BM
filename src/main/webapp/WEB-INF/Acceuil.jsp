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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <title>Document</title>

    <style>
        html,
        body {
            position: relative;
            height: 100%;

        }

        body {

            font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
            font-size: 14px;
            margin: 0;
            padding: 0;
            background: #151728;
        }

        swiper-container {
            width: 100%;
            height: 600px;
        }

        swiper-slide {
            text-align: center;
            font-size: 18px;
            display: flex;
            justify-content: center;
            align-items: center;

        }

        swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;

        }
        header{
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            height: 55px;
            top: 0;
            left: 100px;
            z-index: 1000;
            position: fixed;
            width: 80%;
            align-items: center;
        }
        .headr{
            position: absolute;
            top: 25px;
        }
    </style>
</head>
<body>

<header>
    <div class="headr" style="display: flex; justify-content: space-between; align-items: center;">
        <div class="logo"><img src="https://i.ibb.co/jDDfy4M/Black-White-Simple-Monoline-Hotel-Logo.png" width="100%" /></div>
        <div class="nav_paremt_conatainer movieDetailnav_paremt_conatainer">
            <nav style="display: flex; flex-direction: row; width: 600px;" class="navContainer movieDetailnavContainer row">
                <form method="post" action="search">
                    <div style="display: flex; flex-direction: row; gap: 10px; padding-top: 5px;">
                        <input class="search col-md-4" type="text" placeholder="Search" name="title">
                        <button class="btn btn-outline-light col-md-3" type="submit">Chercher</button>
                    </div>
                </form>
            </nav>
            <div style="display: flex; justify-content: end;">
                <button class="btn btn-outline-light col-md-3" type="submit"><a href="http://localhost:8080/Megarama_Cinema_BM_war_exploded/ListFavoris">show my list</a></button>
            </div>
        </div>
    </div>
</header>




<section class="main-swiper">
    <swiper-container
            class="mySwiper"
            direction="vertical"
            pagination="true"
            pagination-clickable="true"
    >
        <swiper-slide
        ><img src="https://images2.alphacoders.com/491/thumb-1920-491173.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images7.alphacoders.com/134/thumb-1920-1343598.png"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images2.alphacoders.com/491/thumb-1920-491173.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images.wallpapersden.com/image/download/descendants-the-rise-of-red-rita-ora_bmdram6UmZqaraWkpJRobWllrWdma2U.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images.wallpapersden.com/image/download/disney-the-marvels-5k_bmZraWeUmZqaraWkpJRqZmdlrWdtbWU.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images5.alphacoders.com/496/thumb-1920-496726.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images5.alphacoders.com/496/thumb-1920-496726.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images5.alphacoders.com/496/thumb-1920-496726.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://images5.alphacoders.com/496/thumb-1920-496726.jpg"
        /></swiper-slide>
    </swiper-container>

    <div class="Smain">


    </div>
    <div class="Smain2">

    </div>
    <div class="Smain3">

    </div>


    <c:if test="${filmSe.size() == 0 }">
        <div class="card-search">
            <div class="Scontent">
                <h1>No results found.</h1>
            </div>
        </div>
    </c:if>

    <c:forEach var="filmS" items="${filmSe}">
        <div class="card-search">
            <div class="search-img">


                <a href="/Megarama_Cinema_BM_war_exploded/detail?Id=${filmS.getFilm_id()}">

                    <img src="${filmS.getPicture()}" width="90%" />
                    </a>

            </div>
            <div class="Scontent">
                <div class="search-content">
                    <h1>Search results for</h1>
                    <h2>${filmS.getTitre()}</h2>
                </div>
                <div class="search-content2">
                    <h1>8k</h1>
                    <h2>2024</h2>
                </div>
            </div>
        </div>
    </c:forEach>

</section>

<div class="titre-cards">
    <h1>Now Playing Movies</h1>
</div>

<section class="main-cards">

    <div class="card-wrapper">
    <c:forEach var="film" items="${films}">
        <div class="cardD">
            <div>

           <a href="/Megarama_Cinema_BM_war_exploded/detail?Id=${film.getFilm_id()}">

                    <img class="card_disney" src="${film.getPicture()}">

                </a>
            </div>
            <h1>${film.getTitre()}...</h1>

            <div class="card-content">
                <h2>2024</h2>
                <h3>Movie</h3>
                <h3>8K</h3>
                <a href="#" class="save-icon"><i class="bi bi-save"></i></a>
            </div>

        </div>
    </c:forEach>
    </div>


</section>

<div class="titre-cards">
    <h1>Disney Movies</h1>
</div>

<section class="main-cards">

    <div class="card-wrapper">
        <c:forEach var="Disneys" items="${Disneys}">
            <div class="cardD">
                <div>

                    <a href="/Megarama_Cinema_BM_war_exploded/detail?Id=${Disneys.getFilm_id()}">
                    <img class="card_disney" src="${Disneys.getPicture()}"/>

                    </a>
                </div>
                <h1>${Disneys.getTitre()}...</h1>


                <div class="card-content">
                    <h2>2024</h2>
                    <h3>Movie</h3>
                    <h3>8K</h3>
                    <a href="#" class="save-icon" id="saveFilm"><i class="bi bi-save"></i></a>

                </div>


            </div>
        </c:forEach>
    </div>
    <p id="al" style="display: none">${alert}</p>
</section>

<script>
    const al = document.getElementById("al");
    if (al.innerHTML === ".") {
        alert("The Reservation add successfully")
    }

        document.getElementById("saveFilm").addEventListener("click", function(event) {
        event.preventDefault(); // Empêcher le lien de déclencher la navigation par défaut


        var filmId = "ID_DU_FILM_A_ENREGISTRER";
        var filmTitle = "TITRE_DU_FILM_A_ENREGISTRER";
        var filmPicture = "URL_IMAGE_DU_FILM_A_ENREGISTRER";


        var filmData = {
        filmId: filmId,
        filmTitle: filmTitle,
        filmPicture: filmPicture
    };


        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AddFavoriServlet", true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {

        alert("Film saved successfully!");
    } else {

        alert("An error occurred while saving the film.");
    }
    }
    };
        xhr.send(JSON.stringify(filmData));
    });


</script>


<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
