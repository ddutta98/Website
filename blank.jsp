<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


    <link rel = "stylesheet" type = "text/css" href="Css/blankCss.css">
                    
</head>
<body>
	
	<% String s1 = (String)request.getAttribute("Name");
 	String s2 = (String)request.getAttribute("TraderNamePrefix");
 	String s3 = (String)request.getAttribute("TraderNameFN");
 	String s4 = (String)request.getAttribute("TraderNameLN");
 	String s5 = (String)request.getAttribute("Contact");
 	String s6 = (String)request.getAttribute("MOP");
 	String s7 = (String)request.getAttribute("AddressLine");
 	String s8 = (String)request.getAttribute("Locality");
 	String s9 = (String)request.getAttribute("Landmark");
 	String s10 = (String)request.getAttribute("City");
 	String s11 = (String)request.getAttribute("District");
 	String s12 = (String)request.getAttribute("State");
 	String s13 = (String)request.getAttribute("Pincode");
 	String s14 = (String)request.getAttribute("Image");
 	
 	String[] arr = s14.split(",", 10);
 		
 	
    %> 
    
  <nav class="navbar navbar-inverse" style="height:80px">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="index.html"><img src="images/logo.PNG" width="150px" height="60px"></a>
          </div>
          <ul class="nav navbar-nav">
            <!-- <li class="active"><a href="#">Home</a></li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Page 1-1</a></li>
                <li><a href="#">Page 1-2</a></li>
                <li><a href="#">Page 1-3</a></li>
              </ul>
            </li>
            <li><a href="#">Page 2</a></li> -->
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Contacts</a></li>
          </ul>
        </div>
      </nav>

    

      <div class="my-2 mx-auto p-relative bg-white shadow-1 blue-hover" style="width: 800px; overflow: hidden; border-radius: 1px;" id="container">
          <img src="images/<%=arr[0] %>"     
              class="d-block w-full">
  
          <div class="px-2 py-2">
          
      
          <h1><b><%= s1 %> </b></h1>
                  <p style="font-size:20px;">Owner : <%= s2+" " + s3+" " + s4 %></p>
                  <p>Contact : <%= s5 %></p>
                  <p>Mode of Payment : <%= s6 %></p>
                  <p>Address : <%= s7+" ," + s8+" ," + s9+" " + s10+" ," + s11+" ," + s12+" ," + s13 %></p>
          </div>
      
        </div>
        <br><br>

              <h4 class="display-4" style="text-align:center; color: black;"><b>More Images</b></h4>

              <br><br>
              <div class="w3-content w3-display-container">
                  <img class="mySlides" src="images/<%=arr[1] %>" style="width:100%">
                  <img class="mySlides" src="images/<%=arr[2] %>" style="width:100%">
                  <img class="mySlides" src="images/<%=arr[3] %>" style="width:100%">
                  <img class="mySlides" src="images/<%=arr[4] %>" style="width:100%">
                
                  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
              </div>   
              
        <script>
                var slideIndex = 1;
                  showDivs(slideIndex);
                  
                  function plusDivs(n) {
                    showDivs(slideIndex += n);
                  }
                  
                  function showDivs(n) {
                    var i;
                    var x = document.getElementsByClassName("mySlides");
                    if (n > x.length) {slideIndex = 1}
                    if (n < 1) {slideIndex = x.length}
                    for (i = 0; i < x.length; i++) {
                      x[i].style.display = "none";  
                    }
                    x[slideIndex-1].style.display = "block";  
                  }
</script>
</body>
</html>
