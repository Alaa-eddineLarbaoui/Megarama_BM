<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 25/04/2024
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style><%@ include file="MovieDetails.css"%></style>


</head>

<body class="body">
<div class="preloader">
    <div class="wrapper">
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="shadow"></div>
        <div class="shadow"></div>
        <div class="shadow"></div>
        <span>Loading</span>
    </div>


</div>

<main class="main">
    <div class=" overlay overlay2"></div>
    <div class="overlay_side_navabar"></div>


    <section class="section_one section_one_movieDetail">
        <div class="nav_paremt_conatainer movieDetailnav_paremt_conatainer">
            <nav class="navContainer movieDetailnavContainer">
                <svg xmlns="http://www.w3.org/2000/svg" width="33" height="33" fill="currentColor"
                     class="hamburger hamburgerphone bi-list" viewBox="0 0 16 16">
                    <path class="pathh" fill-rule="evenodd"
                          d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                </svg>
                <input class="search" type="text" placeholder="Search ">
                <div onclick="changerImage()"  class="light_darkmode" style="background-image: url('https://i.ibb.co/VW5vNMP/soleil.png');">

                </div>
            </nav>
        </div>
        <c:forEach items="${detai}" var="detail">

        <section class="section_two section_two2">
            <div class="posterbig">
                <img class="poster_big_img"
                     src="${detail.getBackground_Url()}" alt="">
            </div>
            <div class="poster_big">
                <div class="gradient"></div>
                <div class="line"></div>
            </div>
            <section class="movie_details">

                <img class="movie_details_poster"
                     src="${detail.getPicture()}"  alt="">
                <div class="movie_details_about">

                    <h2 class="movie_details_title">${detail.getTitre()}</h2>

                    <div class="date_rating">
                        <h5>${detail.getDirector()}</h5>
                    </div>
                    <div class="movie_details_about_category">
                        <ul class="movie_details_about_category_ul">
                            <li class="movie_details_category_ul_li">${detail.getGenre()}</li>
                        </ul>
                    </div>

                    <div class="date_rating">
                        <p class="time">${detail.getDuration()} minutes</p>
                    </div>

                    <form id="ratingForm" action="Notation" method="post">
                        <input type="hidden" name="film_id" value="${detail.getFilm_id()}">
                    <div class="rating" data-rating="0">
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                    </div>
                    <input type="hidden" id="ratingInput" name="rating" value="0">
                    <input type="submit" value="Submit" style="display: none;">
                    </form>


                </div>

                <section class="Sec_input_reservation">
                    <div class="div_reservation">
                        <h1 title="reservation">Booking Cinema Tickets</h1>
                        <form action="re" method="post">
                            <input type="hidden" name="film_id" value="${detail.getFilm_id()}">
                            <label for="seats">Number of places:</label><br>
                            <input type="number" id="seats" name="seats" min="1" required><br><br>


                            <div class="button_reserve">
                                <input type="submit" value="To book">
                            </div>
                        </form>

                    </div>

                </section>

            </section>





            <section class="section_story">
                <p>${detail.getSynopsis()}</p>
            </section>



            <section class="Trailer_section">
                <iframe width="560" height="315" src="${detail.gettrailler_url()}"
                        title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>

                </iframe>
            </section>




        </section>
        <div class="div_reservation">
            <h1 title="reservation">Commentaires</h1>
            <form action="ReactionCommentaire" method="post"> <!-- Utilisez le nom correct du servlet -->
                <input type="hidden" name="film_id" value="${detail.getFilm_id()}">
                <label for="seat">Commenter :</label><br>
                <input type="text" id="seat" name="Commentaire" required><br><br>

                <label for="seatt">Notation :</label><br>
                <input type="Number" id="seatt" name="Notation" required><br><br>

                <div class="button_reserve">
                    <input type="submit" value="Envoyez">
                </div>
            </form>
        </div>

        </c:forEach>

    </section>


</main>
<script>
        const ratingStars = document.querySelectorAll(".rating span");
        const ratingValue = document.querySelector(".rating").getAttribute("data-rating");

        ratingStars.forEach(function(star, index) {
            star.addEventListener("click", function() {
                const rating = ratingStars.length - index ;
                document.querySelector(".rating").setAttribute("data-rating",rating);
                document.getElementById("ratingInput").value = rating;
                document.getElementById("ratingForm").submit();
                document.getElementById("ratingForm").addEventListener("submit", function(event){
                    event.preventDefault();
                });
                for (let i = 0; i < ratingStars.length; i++) {
                    if (i < index) {
                        ratingStars[i].id="";
                    } else {
                        ratingStars[i].id="checked";
                    }
                }
            });
        });
        const lightDarkmode = document.querySelector(".light_darkmode");
    const preLoader = document.querySelector(".preloader");

    window.addEventListener("load", function () {
        preLoader.style.display = "none";
    });
        lightDarkmode.addEventListener("click", function () {
            document.body.classList.toggle("light");

            if (document.body.classList.contains(`light`)) {
                localStorage.setItem(`theme`, `light`);
            } else {
                localStorage.setItem(`theme`, `dark`);
            }
        });
        function changerImage() {
            var div = document.querySelector('.light_darkmode');

            var nouvelleImage = "https://i.ibb.co/BP99jSr/soleil-1.png";
            div.style.backgroundImage = "url('" + nouvelleImage + "')";
        }
</script>
</body>
</html>
