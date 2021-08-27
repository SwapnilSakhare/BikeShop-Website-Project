<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<!DOCTYPE html>

<html>
<head>
<title>GALLERY</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
<link href="css/YouTubePopUp.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/simplelightbox.min.css" rel="stylesheet" type="text/css" media="all" />
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
				<li class="active current"><a href="gallery.aspx">Gallery</a></li>
				<li><a href="about.aspx">About</a></li>
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
		<h3 class="text-center" data-aos="zoom-in">Our Gallery</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="home.aspx">Home</a></li>
                    <li class="active">Gallery</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>
<!-- /header section -->
<!-- images -->
<section class="gallery-w3ls">
	<div class="container">
		<div class="gallery" data-aos="flip-down">
			<a href="images/gallery1.jpg" class="big"><img src="images/gallery1.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery2.jpg" class="big"><img src="images/gallery2.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery3.jpg" class="big"><img src="images/gallery3.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery4.jpg" class="big"><img src="images/gallery4.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery5.jpg" class="big"><img src="images/gallery5.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery6.jpg" class="big"><img src="images/gallery6.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery7.jpg" class="big"><img src="images/gallery7.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery8.jpg" class="big"><img src="images/gallery8.jpg" alt="" title="Bike Race"/></a>
			<a href="images/gallery9.jpg" class="big"><img src="images/gallery9.jpg" alt="" title="Bike Race"/></a>
			<div class="clear"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</section>	
<!-- //images -->

<section class="last-w3layouts">
	<div class="container">
		<a href="home.aspx" class="bottom-agile"><h2 class="text-center">Bike Lifestyle</h2></a>
		<p class="text-center">&copy; 2020 Bike Lifestyle. All Rights Reserved | Design by Swapnil Sakhare</p>
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
<!-- js for video popup -->
<script type="text/javascript" src="js/YouTubePopUp.jquery.js"></script>
<script type="text/javascript">
    jQuery(function () {
        jQuery("a.bla-2").YouTubePopUp({ autoplay: 0 }); // Disable autoplay
    });
</script>
<!-- //js for video popup -->
<!-- js for video hover -->
<script src="js/ns.hover.min.js"></script>
	<script>
	    window.onload = function () {
	        //$.noConflict();
	        jQuery(document).ready(function ($) {
	            $('.container2').nsHover({
	                bgcolor: '#000',
	                bganim: 'scale'
	            });
	        });
	    }
	</script>
<!-- //js for video hover -->
<!-- js for video carousel -->
<script src="js/jquery.hoverCarousel.js"></script>
<!-- //js for video carousel -->
<!-- js for image gallery -->
<script type="text/javascript" src="js/simple-lightbox.js"></script>
<script>
    $(function () {
        var $gallery = $('.gallery a').simpleLightbox();

        $gallery.on('show.simplelightbox', function () {
            console.log('Requested for showing');
        })
		.on('shown.simplelightbox', function () {
		    console.log('Shown');
		})
		.on('close.simplelightbox', function () {
		    console.log('Requested for closing');
		})
		.on('closed.simplelightbox', function () {
		    console.log('Closed');
		})
		.on('change.simplelightbox', function () {
		    console.log('Requested for change');
		})
		.on('next.simplelightbox', function () {
		    console.log('Requested for next');
		})
		.on('prev.simplelightbox', function () {
		    console.log('Requested for prev');
		})
		.on('nextImageLoaded.simplelightbox', function () {
		    console.log('Next image loaded');
		})
		.on('prevImageLoaded.simplelightbox', function () {
		    console.log('Prev image loaded');
		})
		.on('changed.simplelightbox', function () {
		    console.log('Image changed');
		})
		.on('nextDone.simplelightbox', function () {
		    console.log('Image changed to next');
		})
		.on('prevDone.simplelightbox', function () {
		    console.log('Image changed to prev');
		})
		.on('error.simplelightbox', function (e) {
		    console.log('No image found, go to the next/prev');
		    console.log(e);
		});
    });
</script>
<!-- //js for image gallery -->		
<!-- /js files -->
</body>
</html>		