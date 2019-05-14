<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, model.data"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    	<link rel="stylesheet" type="text/css" href="Css/ShopCss.css">
    

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
            integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
            $("#myInput1").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#search *").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
            });
        });
        </script>

    <style>
        #navbar{
            height: 75px;
        }
    </style>

    <link rel = "stylesheet" type = "text/css" href="Css/shopCss.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="navbar" style="background: linear-gradient(to right,#2193b0 , #6dd5ed);">
        <div class="purple-gradient color-block mb-3 mx-auto rounded-circle z-depth-1"></div>
            <a class="navbar-brand" href="Index.jsp">
                <img src="images/logo.PNG" width="150px" height="60px"></a>
                
            </a>
            <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button> -->
        

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!-- <li class="nav-item">
                    <a class="nav-link" href="#">Podcasts</a>
                  </li> -->
                    <li class="nav-item">
                        <a \class="nav-link" style="color:rgb(10, 10, 10)" href="#">Contact</a>
                    </li>
                <!-- <li class="nav-item">
                <a class="nav-link" href="#">Favourite Stations</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Charts</a>
                </li> -->
            </ul>
        </div>
    </nav> <br>
    <br>
    <br>

    <div class="row" style="padding-top: 50px">
        <div class="col-sm-3" style="padding: 100px">
            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                <span>Categories</span>
            </h6>
            <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
            <div class="sidebar-sticky">
                    <ul class="nav flex-column" id="myUL">
                        <li class="nav-item">
                        <a class="nav-link active" href="FetchDetails?shop=Garments">
                            <i class="fas fa-tshirt"></i>
                            Clothes <span class="sr-only">(current)</span>
                        </a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="FetchDetails?shop=Mobile Accessories">
                            <i class="fas fa-taxi"></i>
                           Mobile Accessories
                        </a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="FetchDetails?shop=General Stores">
                            <i class="fas fa-pills"></i>
                            General Stores
                        </a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="FetchDetails?shop=Food">
                            <i class="fas fa-pills"></i>
                            Food
                        </a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="FetchDetails?shop=Beauty Parlour">
                            <i class="fas fa-pills"></i>
                            Beauty Parlour
                        </a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="FetchDetails?shop=Car Accessories">
                            <i class="fas fa-pills"></i>
                            Car Accessories
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="FetchDetails?shop=Hotel">
                            <i class="fas fa-pills"></i>
                            Hotel
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="FetchDetails?shop=Departmental Store">
                            <i class="fas fa-pills"></i>
                            Departmental Store
                            </a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="FetchDetails?shop=Pharmacy">
                            <i class="fas fa-pills"></i>
                           Pharmacy
                            </a>
                            </li>
                        <li class="nav-item">
                            <a class="nav-link" href="FetchDetails?shop=Medical Store">
                            <i class="fas fa-pills"></i>
                            Medical Store
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="FetchDetails?shop=Tailor/Fashion Designer">
                            <i class="fas fa-pills"></i>
                            Tailor
                            </a>
                        </li>
                        

                    </ul>
            </div>
        </div>
        
        <div class="col-sm-8">
            <div class="content" id="search">
                <h1 class="heading" style="text-align:center">Shops</h1>
                <p class="description"></p>
                <c:forEach var="asd" items="${shops}">
                <a class="card" href="ShopDetail2?id=<c:out value="${asd.getShop_number()}"/>">
                <div class="front" style="background-image: url(images/clothes.jpeg);">
                <p>${asd.getShop_Name()}</p>
                </div>
                <div class="back">
                <div>
                    <p>Contact: ${asd.getShop_contact_details()} </p>
                    <p>Address: ${asd.getAddress_Line()} ${asd.getLocality()} ${asd.getLandmark()}</p>
                    <!-- <button class="button">Click Here</button> -->
                </div>
                </div>
                </a>
                </c:forEach>
            </div>
        </div>
    </div>

    <script>
            function myFunction() {
                var input, filter, ul, li, a, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                ul = document.getElementById("myUL");
                li = ul.getElementsByTagName("li");
                for (i = 0; i < li.length; i++) {
                    a = li[i].getElementsByTagName("a")[0];
                    txtValue = a.textContent || a.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        li[i].style.display = "";
                    } else {
                        li[i].style.display = "none";
                    }
                }
            }
            </script>
</body>
</html>