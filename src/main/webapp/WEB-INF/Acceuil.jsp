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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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





<section class="main-swiper">
    <div class="imgNom">
        <div class="imguser"></div>

        <div class="username">
            <h1>Salma bee</h1>
            <p>Book Your Favorite Movie</p>
        </div>
    </div>
    <div class="favoris"></div>
</section>

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


<div class="titre-cards">
    <h1>Recommandations de films</h1>
</div>

<section class="main-cards">
    <div class="card-wrapper">
        <c:forEach var="recommendation" items="${re}">
            <div class="cardD">
                <div>
                    <a href="/demo_war_exploded/detail?Id=${recommendation.getFilm_id()}">
                        <img class="card_disney" src="${recommendation.getPicture()}"/>
                    </a>
                </div>
                <h1>${recommendation.getTitre()}...</h1>
                <div class="card-content">
                    <h2>2024</h2>
                    <h3>Movie</h3>
                    <h3>8K</h3>
                </div>
            </div>
        </c:forEach>
    </div>
</section>

<div class="titre-cards">
    <h1>Now Playing Movies</h1>
</div>

<section class="main-cards">

    <div class="card-wrapper">
        <c:forEach var="film" items="${films}">
            <div class="cardD">
                <div>






                    <div class="img_comment">
                        <a href="/demo_war_exploded/detail?Id=${film.getFilm_id()}">
                        <img class="card_disney" src="${film.getPicture()}"> </a>
                        <div class="comments cm" id="cm">
                            <i class="fa-solid fa-comment" id="icon"></i>
                            <p style="font-size: 10px">1,2K</p>
                        </div>
                    </div>


                </div>
                <h1>${film.getTitre()}...</h1>

                <div class="card-content">
                    <h2>2024</h2>
                    <h3>Movie</h3>
                    <h3>8K</h3>
                </div>
            </div>


    </div>
    <div class="wrapper" id="wrapper">
        <button class="cancel" id="cancel">X</button>

        <div class="left">
            <c:forEach var="commentaires" items="${commentaires}">
            <div class="person_commnets">
                <div class="profile"></div>
                <div class="cv">
                    <h6>Salma Bee</h6>
                    <p>${commentaires.getCommentaire()}</p>
                </div>
            </div>
            </c:forEach>

        </div>

        <div class="right">
            <form action="ReactionCommentaire" method="post">
                <label for="commentaire">Commentaire</label><br>
               <input type="hidden"  name="idFilm" value="${film.getFilm_id()}">
                <textarea type="text" name="commmentaire" id="commentaire"></textarea><br>
                <button type="submit">Envoyer</button>
            </form>
        </div>
    </div>
    </c:forEach>


</section>

<div class="titre-cards">
    <h1>Disney Movies</h1>
</div>

<section class="main-cards">

    <div class="card-wrapper">
        <c:forEach var="Disneys" items="${Disneys}">
            <div class="cardD">
                <div>


                    <a href="/demo_war_exploded/detail?Id=${Disneys.getFilm_id()}">

                        <img class="card_disney" src="${Disneys.getPicture()}"/>

                    </a>
                </div>
                <h1>${Disneys.getTitre()}...</h1>


                <div class="card-content">
                    <h2>2024</h2>
                    <h3>Movie</h3>
                    <h3>8K</h3>
                </div>

            </div>
        </c:forEach>
    </div>




    <p id="al" style="display: none">${alert}</p>
</section>

<script>
    const al = document.getElementById("al");
    if (al.innerHTML === "."){
        alert("The Reservation add successfully")
    }

    const cmElements = document.querySelectorAll(".cm");
    const wrapper = document.getElementById("wrapper");
    cmElements.forEach(cm => {
        cm.onclick = () => {
            wrapper.style.display = "flex";
        };
    });

    const cancel = document.getElementById("cancel");
    cancel.onclick = () => {
        wrapper.style.display = "none";
    }

</script>


<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
