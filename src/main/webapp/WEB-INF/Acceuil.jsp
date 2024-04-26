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
            background: #03033d;
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
            width: 98%;
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            height: 50px;
            top: 0;
            z-index: 1000;
            position: fixed;
        }
        .headr{
            position: absolute;
            top: 25px;
            background: #03033d;
        }
    </style>
</head>
<body>
<header>

    <div class="headr">
        <div><h1 style="padding-top: 10px" class="name">MEGARAMA .</h1></div>
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


<div style=" height: 400px; width: 100% ; background: linear-gradient(0deg, #03033d 0%, rgba(7,7,73,0.9) 80%, rgba(7,7,73,0) 100%);">
        <h1 style="padding: 30px;" class="title">Now Playing Movies</h1>

        <div class="resultcardd">



            <c:forEach var="film" items="${films}">

                <div class="item">
                    <a href="/Megarama_Cinema_BM_war_exploded/detail?Id=${film.getFilm_id()}">
                        <img class="card-image" src="${film.getPicture()}">
                    </a>
                    <h1 class="text-card">${film.getTitre()}</h1>
                </div>

            </c:forEach>




        </div >
    <div class="resultcardd">
        <h1 style="padding: 30px;" class="title">Now</h1>
        I
        <c:forEach var="Disney" items="${Disneys}">

            <div class="item">
                <img class="card-image" src="${Disney.getPicture()}">
                <h1 class="text-card">${Disney.getTitre()}</h1>


            </div>
        </c:forEach>
    </div>





        <div >


            <div class="row">
                <c:forEach var="films" items="${filmSe}">

                <div class="card">
                    <img src="${films.getPicture()}" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${films.getTitre()}</h5>

                    </div>
                </div>
                </c:forEach>
            </div>

        </div>
    </div>


</div>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
