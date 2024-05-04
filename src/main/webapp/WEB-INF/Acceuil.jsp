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

    <div class="headr">
        <div class="logo"><img src="https://i.ibb.co/jDDfy4M/Black-White-Simple-Monoline-Hotel-Logo.png" width="100%" /></div>
        <div class="nav_paremt_conatainer movieDetailnav_paremt_conatainer">
            <nav style="display: flex; flex-direction: row; width: 600px;" class="navContainer movieDetailnavContainer row">

                <form method="post" action="search" >

                    <div style="display: flex; flex-direction: row; gap:10px; padding-top: 5px;">
                        <input class="search col-md-4" type="text" placeholder="Search" name="title">

                        <button class="btn btn-outline-light col-md-3" type="submit">Chercher</button>

                    </div>



                </form>
            </nav>
        </div>
    </div>
</header>



<section class="main-swiper">
    <swiper-container
            class="mySwiper"
            direction="vertical"
            pagination="true"
            pagination-clickable="true"
            autoplay="true"
    >
        <swiper-slide
        ><img src="https://images2.alphacoders.com/491/thumb-1920-491173.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://i.ibb.co/THmw4K1/3.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://i.ibb.co/m8xH1v2/2.jpg"
        /></swiper-slide>
        <swiper-slide
        ><img src="https://i.ibb.co/wLwL9Yp/1.jpg"
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
    <h1>Recommandations de films</h1>
</div>

<section class="main-cards">
    <div class="card-wrapper">
        <c:forEach var="recommendation" items="${re}">
            <div class="cardD">
                <div>
                    <a href="/Megarama_Cinema_BM_war_exploded/detail?Id=${recommendation.getFilm_id()}">
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

           <a href="/Megarama_Cinema_BM_war_exploded/detail?Id=${film.getFilm_id()}">


                    <div class="img_comment">
                        <img class="card_disney" src="${film.getPicture()}">
                        <div class="comments">
                            <i class="fa-solid fa-comment" id="icon"></i>
                            <p>1,2K</p>
                        </div>
                    </div>

                </a>
            </div>
            <h1>${film.getTitre()}...</h1>

            <div class="card-content">
                <h2>2024</h2>
                <h3>Movie</h3>
                <h3>
                    <c:forEach var="notation" items="${notations}">
                        <c:choose>
                            <c:when test="${film.getFilm_id().equals(notation.getFilm_id())}">${notation.getNotation()}</c:when>
                            <c:otherwise>0</c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <svg fill="gold" width="16px" height="16px" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg" class="icon"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M908.1 353.1l-253.9-36.9L540.7 86.1c-3.1-6.3-8.2-11.4-14.5-14.5-15.8-7.8-35-1.3-42.9 14.5L369.8 316.2l-253.9 36.9c-7 1-13.4 4.3-18.3 9.3a32.05 32.05 0 0 0 .6 45.3l183.7 179.1-43.4 252.9a31.95 31.95 0 0 0 46.4 33.7L512 754l227.1 119.4c6.2 3.3 13.4 4.4 20.3 3.2 17.4-3 29.1-19.5 26.1-36.9l-43.4-252.9 183.7-179.1c5-4.9 8.3-11.3 9.3-18.3 2.7-17.5-9.5-33.7-27-36.3z"></path> </g></svg>
                </h3>
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
</script>


<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
