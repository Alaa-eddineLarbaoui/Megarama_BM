<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23/04/2024
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>


<div class="rounded m-5 check-availabilty" id="next">
    <form id="formCheck" method="post" action="search" class="form-checking row" >


        <div class="col-md-2 mb-2">
            <label for="title">Title :</label>
            <input class="form-control mt-1" type="text" id="title" name="title">

        </div>
        <button type="submit">Chercher</button>



    </form>
</div>



<div class="container">


    <div class="row">
        <c:forEach var="film" items="${films}">
            <div class="col-md-4">
                <div class="card">
                   <div class="card-body">
                        <h5 class="card-title">${film.getTitre()}</h5>

                        <a href="#" class="btn btn-primary">details</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<div class="container">


    <div class="row">
        <c:forEach var="films" items="${filmSe}">
            <div class="col-md-4">
                <div class="card">
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
