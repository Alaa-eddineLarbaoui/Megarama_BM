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
<style>
    body{
        background-color: rgb(14, 14, 37);
    }
    header{
        display: flex;
        flex-direction: row;
        height: 100px;
        width: 100%;
    }
    .cardd{

        width: 234px;
        text-align: center;

    }
    .cardd-image{
        height: 300px;

        border-radius:50px;

    }
    .textt-card{
        color: white;
        text-align: center;
        font-size: medium;
        font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }
    .details{
        background-color: rgb(14, 14, 37);
        color: rgb(123, 117, 117);
        border:1px solid rgb(71, 62, 62);
        border-radius: 9px;
        padding: 6px 16px;
        margin-top: -9px;
    }
    .resultcardd{
        display: flex;
       gap:15px;
    }

</style>


<div class="rounded m-5 check-availabilty" id="next">
    <form id="formCheck" method="post" action="search" class="form-checking row" >


        <div class="col-md-2 mb-2">
            <label for="title">Title :</label>
            <input class="form-control mt-1" type="text" id="title" name="title">

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
