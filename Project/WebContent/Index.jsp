<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" type="text/css" href="Css/indexCss.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    

    <style>
        #navbar{
            height: 75px;
        }
        #myInput{
            padding-left: 200px;
            padding-right: 200px;
            color: white;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#search *").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
        });
    </script>

    <title>Document</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="navbar">
        <div class="purple-gradient color-block mb-3 mx-auto rounded-circle z-depth-1"></div>
        <a class="navbar-brand" href="#">
			<img src="images/logo.PNG" width="150px" height="60px"></a>
        </a>
        <button class="navbar-toggler btn btn-primary" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <br>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                
                <li class="nav-item">
                    <a \class="nav-link" style="color:rgb(10, 10, 10)" href="#">Contact</a>
                </li>
                
            </ul>
        </div>
    </nav>

    <br><br><br><br>

    <div class="jumbotron">
        
        <h1 class="display-4">Neemrana Circle</h1>
        <p class="lead">Yellow page for Neemrana.</p>
        <hr class="my-4">
    </div>
    <br><br>
    <h2 class=display-2 style="text-align:center">Product Categories</h2>
    <input type="text" id="myInput" placeholder="Search for Categories.." title="Type in a name">

    <br><br>

    <div class="conatiner">
        <div class="wrap" id="search">


            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Garments">
                    <h1>Clothes</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
             <a href="FetchDetails?shop=Mobile Accessories">
                <h1>Mobile Accessories</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=General Stores">
                	<h1>General Stores</h1>
                </a>

            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Food">
                <h1>Food</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Beauty Parlour">
                <h1>Beauty Parlour</h1>
                </a>

            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Car Accessories">
                <h1>Car Accessories</h1>
                </a>

            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Hotel">
                <h1>Hotel</h1>
                </a>

            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Departmental Store">
                <h1>Departmental Store</h1>
                </a>

            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Pharmacy">
                <h1>Pharmacy</h1>
                </a>

            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Medical Store">
                <h1>Medical Store</h1>
                </a>

            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Tailor/Fashion Designer">
                <h1>Tailor/Fashion Designer</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Cosmetics Shop">
                <h1>Cosmetics Shop</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Property Dealing">
                <h1>Property Dealing</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Jewellers">
                <h1>Jewellers</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Mobile Repair">
               
                <h1>Mobile Repair</h1>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Kirana Store">
                <h1>Kirana Store</h1>
                </a>
            </div>

            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Electrical,Hardware">
                <h1>Electrical,Hardware</h1>
                </a>
            </div>
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Footwear">
                <h1>Footwear</h1>
                </a>
            </div> 
            
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Saloon">
                <h1>Saloon</h1>
                </a>
            </div>    
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Photo Studio">
                <h1>Photo Studio</h1>
                </a>
            </div>
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Steel Work Shop">
                <h1>Steel Work Shop</h1>
                </a>
            </div>
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Man Power &Labour Contractor">
                <h1>Man Power &Labour Contractor</h1>
                </a>
            </div>
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Dental Hospital">
                <h1>Dental Hospital</h1>
                </a>
            </div>
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Fitness Gym">
                <h1>Fitness Gym</h1>
                </a>
            </div>
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Hospital">
                <h1>Hospital</h1>
                </a>
            </div>
            
            <div class="box" style="background: url('images/clothes.jpeg')">
                <a href="FetchDetails?shop=Home Furnishing ">
                <h1>Home Furnishing </h1>
                </a>
            </div>
            
            

        </div>
    </div>



</body>

</html>