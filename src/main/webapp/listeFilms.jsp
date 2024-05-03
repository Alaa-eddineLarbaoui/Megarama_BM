<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 03/05/2024
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>liste Films</title>
</head>
<body>
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
</body>
</html>
