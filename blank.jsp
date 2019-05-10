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
    
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="navbar">
                <div class="purple-gradient color-block mb-3 mx-auto rounded-circle z-depth-1"></div>
                  <a class="navbar-brand" href="index.html">
                      <img src="images/logo.png" width="150" height="60" alt="">
                      
                  </a>
                  <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button> -->
                
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item">
                      	<a class="nav-link" style="color:rgb(10, 10 ,10)" href="shops.html">Categories</a>
<!--                       	<a class="nav-link" style="color:rgb(10, 10, 10); float:right;"  href="#">Contact</a>
 -->                    
 							<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>  	
                        
                      	</div>
                      </li>
                      <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Favourite Stations</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="#">Charts</a>
                      </li> -->
                    </ul>
                  </div>
        </nav>

    

        <div class="app">
                <header>
                  <img src="images/<%=arr[0] %>" >
                </header>
                <main>
                  <h1><b><%= s1 %> </b></h1>
                  <p style="font-size:20px;">Owner : <%= s2+" " + s3+" " + s4 %></p>
                  <p>Contact : <%= s5 %></p>
                  <p>Mode of Payment : <%= s6 %></p>
                  <p>Address : <%= s7+" " + s8+" " + s9+" " + s10+" " + s11+" " + s12+" " + s13 %>
                  
                  
                </main>
              </div>
              
              <br><br><br>

              <h4 class="display-4" style="text-align:center">More Images</h4>

              <div class="slider">
                    <div class="slide_viewer">
                      <div class="slide_group" id="slide">    
                        <div class="slide">
                         <img src="images/<%=arr[1] %>" >
                        </div>
                        <div class="slide">
                        <img src="images/<%=arr[2] %>" >
                        </div>
                        <div class="slide">
                         <img src="images/<%=arr[3] %>" >
                        </div>
                        <div class="slide">
                        <img src="images/<%=arr[4] %>" >
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="slide_buttons">
                  </div>
                  
                  <div class="directional_nav">
                    <div class="previous_btn" title="Previous">
                      <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="65px" height="65px" viewBox="-11 -11.5 65 66">
                        <g>
                          <g>
                            <path fill="#474544" d="M-10.5,22.118C-10.5,4.132,4.133-10.5,22.118-10.5S54.736,4.132,54.736,22.118
                              c0,17.985-14.633,32.618-32.618,32.618S-10.5,40.103-10.5,22.118z M-8.288,22.118c0,16.766,13.639,30.406,30.406,30.406 c16.765,0,30.405-13.641,30.405-30.406c0-16.766-13.641-30.406-30.405-30.406C5.35-8.288-8.288,5.352-8.288,22.118z"/>
                            <path fill="#474544" d="M25.43,33.243L14.628,22.429c-0.433-0.432-0.433-1.132,0-1.564L25.43,10.051c0.432-0.432,1.132-0.432,1.563,0	c0.431,0.431,0.431,1.132,0,1.564L16.972,21.647l10.021,10.035c0.432,0.433,0.432,1.134,0,1.564	c-0.215,0.218-0.498,0.323-0.78,0.323C25.929,33.569,25.646,33.464,25.43,33.243z"/>
                          </g>
                        </g>
                      </svg>
                    </div>
                    <div class="next_btn" title="Next">
                      <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="65px" height="65px" viewBox="-11 -11.5 65 66">
                        <g>
                          <g>
                            <path fill="#474544" d="M22.118,54.736C4.132,54.736-10.5,40.103-10.5,22.118C-10.5,4.132,4.132-10.5,22.118-10.5	c17.985,0,32.618,14.632,32.618,32.618C54.736,40.103,40.103,54.736,22.118,54.736z M22.118-8.288	c-16.765,0-30.406,13.64-30.406,30.406c0,16.766,13.641,30.406,30.406,30.406c16.768,0,30.406-13.641,30.406-30.406 C52.524,5.352,38.885-8.288,22.118-8.288z"/>
                            <path fill="#474544" d="M18.022,33.569c 0.282,0-0.566-0.105-0.781-0.323c-0.432-0.431-0.432-1.132,0-1.564l10.022-10.035 			L17.241,11.615c 0.431-0.432-0.431-1.133,0-1.564c0.432-0.432,1.132-0.432,1.564,0l10.803,10.814c0.433,0.432,0.433,1.132,0,1.564 L18.805,33.243C18.59,33.464,18.306,33.569,18.022,33.569z"/>
                          </g>
                        </g>
                      </svg>
                    </div>
                  </div>
                  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    
                  
                    
    <script>
    
    
    $('.slider').each(function() {
    	
    	var $this = $(this);
    	var $group = $this.find('.slide_group');
    	var $slides = $this.find('.slide');
    	var bulletArray = [];
    	var currentIndex = 0;
    	var timeout;
    	
    	

    	function move(newIndex) {
    	  var animateLeft, slideLeft;
    	  
    	  advance();
    	  
    	  if ($group.is(':animated') || currentIndex === newIndex) {
    	    return;
    	  }
    	  
    	  bulletArray[currentIndex].removeClass('active');
    	  bulletArray[newIndex].addClass('active');
    	  
    	  if (newIndex > currentIndex) {
    	    slideLeft = '100%';
    	    animateLeft = '-100%';
    	  } else {
    	    slideLeft = '-100%';
    	    animateLeft = '100%';
    	  }
    	  
    	  $slides.eq(newIndex).css({
    	    display: 'block',
    	    left: slideLeft
    	  });
    	  $group.animate({
    	    left: animateLeft
    	  }, function() {
    	    $slides.eq(currentIndex).css({
    	      display: 'none'
    	    });
    	    $slides.eq(newIndex).css({
    	      left: 0
    	    });
    	    $group.css({
    	      left: 0
    	    });
    	    currentIndex = newIndex;
    	  });
    	}

    	function advance() {
    	  clearTimeout(timeout);
    	  timeout = setTimeout(function() {
    	    if (currentIndex < ($slides.length - 1)) {
    	      move(currentIndex + 1);
    	    } else {
    	      move(0);
    	    }
    	  }, 4000);
    	}

    	$('.next_btn').on('click', function() {
    	  if (currentIndex < ($slides.length - 1)) {
    	    move(currentIndex + 1);
    	  } else {
    	    move(0);
    	  }
    	});

    	$('.previous_btn').on('click', function() {
    	  if (currentIndex !== 0) {
    	    move(currentIndex - 1);
    	  } else {
    	    move(3);
    	  }
    	});

    	$.each($slides, function(index) {
    	  var $button = $('<a class="slide_btn">&bull;</a>');
    	  
    	  if (index === currentIndex) {
    	    $button.addClass('active');
    	  }
    	  $button.on('click', function() {
    	    move(index);
    	  }).appendTo('.slide_buttons');
    	  bulletArray.push($button);
    	});

    	advance();
    	});
</script>
</body>
</html>

 