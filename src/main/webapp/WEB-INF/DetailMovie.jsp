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
</head>
<style><%@ include file="MovieDetails.css"%></style>
<body class="body">

<main class="main">
    <div class=" overlay overlay2"></div>
    <div class="overlay_side_navabar"></div>
    <div class="sidenav_container_movieDetail">
        <div class="sidenav_child_container">
            <nav class="sidenav sidenav_2">

                <h3 class="titleMegarama">CINEMA </h3>


                <div class="menu">
                    <h3 class="title">CINEMAA</h3>
                    <ul class="menu_ul">
                        <li class="home">
                            <a class="sidenavlinks" href="./index.html"><svg xmlns="http://www.w3.org/2000/svg"
                                                                             width="22" height="22" fill="currentColor" class="bi bi-house-fill"
                                                                             viewBox="0 0 16 16">
                                <path class="path" fill-rule="evenodd"
                                      d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
                                <path class="path" fill-rule="evenodd"
                                      d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
                            </svg><span class="Home_title title_span">Home</span></a>
                        </li>
                        <li class="movie">
                            <a class="sidenavlinks" href="./moviesGenre.html">
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
                                     class="bi bi-play-fill" viewBox="0 0 16 16">
                                    <path class="path"
                                          d="m11.596 8.697-6.363 3.692c-.54.313-1.233-.066-1.233-.697V4.308c0-.63.692-1.01 1.233-.696l6.363 3.692a.802.802 0 0 1 0 1.393z" />
                                </svg>
                                <span class="movie_name title_span">Movies</span></a>
                        </li>
                        <li class="tv_shows">
                            <a class="sidenavlinks" href="./tvShows.html">
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
                                     class="bi bi-tv-fill" viewBox="0 0 16 16">
                                    <path class="path"
                                          d="M2.5 13.5A.5.5 0 0 1 3 13h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zM2 2h12s2 0 2 2v6s0 2-2 2H2s-2 0-2-2V4s0-2 2-2z" />
                                </svg>
                                <span class="tv_shows_title title_span">Shows</span></a>
                        </li>
                        <li class="settings">
                            <a class="sidenavlinks" href="./About.html">
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
                                     class="bi bi-info-square-fill" viewBox="0 0 16 16">
                                    <path class="path"
                                          d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm8.93 4.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                                </svg><span class="settings_title title_span">About</span></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <section class="section_one section_one_movieDetail">
        <div class="nav_paremt_conatainer movieDetailnav_paremt_conatainer">
            <nav class="navContainer movieDetailnavContainer">
                <svg xmlns="http://www.w3.org/2000/svg" width="33" height="33" fill="currentColor"
                     class="hamburger hamburgerphone bi-list" viewBox="0 0 16 16">
                    <path class="pathh" fill-rule="evenodd"
                          d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                </svg>
                <input class="search" type="text" placeholder="Search ">
                <div class="light_darkmode"></div>
            </nav>
        </div>

        <section class="section_two section_two2">
            <div class="posterbig">
                <img class="poster_big_img"
                     src="https://image.tmdb.org/t/p/original//1XDDXPXGiI8id7MrUxK36ke7gkX.jpg" alt="">
            </div>
            <div class="poster_big">
                <div class="gradient"></div>
                <div class="line"></div>
            </div>
            <c:forEach var="detail" items="${detai}">
            <section class="movie_details">

                <img class="movie_details_poster"
                     src="https://image.tmdb.org/t/p/w500//kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg" alt="title">
                <div class="movie_details_about">

                    <h2 class="movie_details_title">${detail.getTitre()}</h2>

                    <div class="NameofDirector">
                        <h5>${detail.getDirector()}</h5>
                    </div>
                    <div class="movie_details_about_category">
                        <ul class="movie_details_about_category_ul">
                            <li class="movie_details_category_ul_li">${detail.getGenre()}</li>
                        </ul>
                    </div>

                    <div class="date_rating">
                        <p class="time">${detail.getDuration()}</p>
                    </div>

                </div>

            </section>





            <section class="section_story">
                <p>${detail.getSynopsis()}</p>
            </section>

            </c:forEach>

            <section class="Trailer_section">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/_inKs4eeHiI?si=__2vaCg-4KUVfYlF"
                        title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </section>

        </section>



        <section class="input_reservation">
            <div class="div_reservation">
                <h1 title="reservation">Réservation de Billets de Cinéma</h1>

                <label for="seats">Nombre de places :</label><br>
                <input type="number" id="seats" name="seats" min="1" required><br><br>

                <input type="submit" value="Réserver">
                </div>

        </section>


    </section>


</main>

</body>
</html>
