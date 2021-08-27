<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>
<html>
<head>
<title>About</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
<link href="css/pogo-slider.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css -->
</head>
<body>
<!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top" data-aos="flip-up">
    <div class="container">
        <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home.aspx"><h1>Bike Lifestyle</h1></a>
        </div>
         <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav slide-nav">
				<li><a href="home.aspx">Home</a></li>
				<li><a href="gallery.aspx">Gallery</a></li>
				<li class="active current"><a href="about.aspx">About</a></li>
				<li><a href="signup.aspx">Sign up</a></li>
                <li><a href="login.aspx">Log in</a></li>

			</ul>
        </div>
        <!--/.nav-collapse -->
		
    </div>
</nav>
<!-- /navigation --> 
<!-- Page Content -->
<!-- header section -->
<section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center" data-aos="zoom-in">About Us</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="home.aspx">Home</a>
                    </li>
                    <li class="active">About</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>	
<!-- /header section -->
<section class="about-w3layouts">
	<div class="container">
        <!-- Intro Content -->
        <div class="row">
            <div class="col-md-6" data-aos="flip-left">
                <div class="pogoSlider" id="js-main-slider">
					<div class="pogoSlider-slide" data-transition="blocksReveal" data-duration="1500"  style="background-image:url(images/about-pic1.jpg);background-position:center;"></div>
					<div class="pogoSlider-slide " data-transition="blocksReveal" data-duration="1500"  style="background-image:url(images/about-pic2.jpg);background-position:center;"></div>
					<div class="pogoSlider-slide " data-transition="blocksReveal" data-duration="1500"  style="background-image:url(images/about-pic3.jpg);background-position:center;"></div>
				</div>
            </div>
            <div class="col-md-6" data-aos="flip-right">
                <h3>About The Bike Lifestyle</h3>
                <p>we are team  </p>
                <p>buy bikes and accessories at your door step</p>
                <p>different type of bikes are available all time</p>
				<p><b>for any query </b></p>
                <p><b>Contact : +91-908-276-2025</b></p>
                <p><b>Email   : info@thebikeshop.com</b></p>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>

<!-- last section -->
<section class="last-w3layouts">
	<div class="container">
		<a href="home.aspx" class="bottom-agile"><h2 class="text-center">Bike Lifestyle</h2></a>
		<p class="text-center">&copy; 2020 Bike Lifestyle. All Rights Reserved | Design by SWAPNIL SAKHARE</p>
	</div>	
</section>
<!-- last section -->
<!-- back to top -->
<a href="#0" class="cd-top">Top</a>
<!-- /back to top -->	
<!-- js files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/top.js"></script> 
<script src="js/modernizr.min.js"></script>
<script src="js/index.js"></script>
<script src='js/aos.js'></script>
<script src="js/aos2.js"></script>
<!-- js for team section -->
<script src="js/toucheffects.js"></script>
<!-- /js for team section -->
<!-- js for about section -->
<script src="js/jquery.pogo-slider.min.js"></script>
<script src="js/main.js"></script>
<!-- /js for about section -->
<!-- /js files -->
</body>
</html>	