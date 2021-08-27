<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>


<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
<link href="css/jquery.mb.thumbgallery.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/info.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/banner.css" rel="stylesheet" type="text/css" media="all" />
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
			<a class="navbar-brand" href="index.html"><h1>Bike Lifestyle</h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav slide-nav">
				<li class="active current"><a href="home.aspx">Home</a></li>
				<li><a href="gallery.aspx">Gallery</a></li>
				<li><a href="about.aspx">About</a></li>
				<li><a href="signup.aspx">Sign up</a></li>
                <li><a href="login.aspx">Log in</a></li>

			</ul>
        </div>
        <!--/.nav-collapse -->		
    </div>
</nav>
<!-- /navigation -->
<!-- banner section -->
<div class="demo-2">
	<div id="slider" class="sl-slider-wrapper">
		<div class="sl-slider">
			<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
				<div class="sl-slide-inner">
					<div class="bg-img bg-img-1"></div>
					<div class="container">
						<h3>The Age Of Bike</h3>
						
					</div>
				</div>
			</div>
			<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
				<div class="sl-slide-inner">
					<div class="bg-img bg-img-2"></div>
					<div class="container">
						<h3>Bike Race, The Adrenaline</h3>
						
					</div>
				</div>
			</div>
			<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
				<div class="sl-slide-inner">
					<div class="bg-img bg-img-3"></div>
					<div class="container">
						<h3>Bike Race Is Forever</h3>
											</div>
				</div>
			</div>
			<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="-5" data-slice2-rotation="25" data-slice1-scale="2" data-slice2-scale="1">
				<div class="sl-slide-inner">
					<div class="bg-img bg-img-4"></div>
					<div class="container">
						<h3>Bike - The Revolution</h3>
						
					</div>
				</div>
			</div>
			<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
				<div class="sl-slide-inner">
					<div class="bg-img bg-img-5"></div>
					<div class="container">
						<h3>Enjoy Bike Riding</h3>
						
					</div>
				</div>	
			</div>
		</div><!-- /sl-slider -->
		<nav id="nav-dots" class="nav-dots">
			<span class="nav-dot-current"></span>
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</nav>
	</div><!-- /slider-wrapper -->
</div>	
<!-- /banner section -->
<!-- info section -->
<section class="info-w3ls">
	<div class="container">
		
		

	
		
	</div>
</section>
<!-- /info section -->

<!-- recent pics section -->
<section class="recent-agileinfo jarallax">
	<div class="container">
		<h3 class="text-center" data-aos="zoom-in">Our Recent Pics</h3>
		<section class="content" data-aos="zoom-in">
			<div id="thumbGrid" class="thumbGrid"
				data-thumbgrid="true"
				data-nav_effect="slideInverse"
				data-nav_delay="60"
				data-nav_timing="300"
				data-nav_pagination="3"
				data-gallery_effectnext="fadeIn"
				data-gallery_effectprev="fadeOut"
				data-gallery_fullscreenw="90%"
				data-gallery_fullscreenh="90%"
				data-gallery_cover="false">
				<img src="images/recent1.jpg" data-highres="images/recent1-1.jpg "/>
				<img src="images/recent2.jpg" data-highres="images/recent2-2.jpg" "/>
				<img src="images/recent3.jpg" data-highres="images/recent3-3.jpg" "/>
				<img src="images/recent4.jpg" data-highres="images/recent4-4.jpg" "/>
				<img src="images/recent5.jpg" data-highres="images/recent5-5.jpg" "/>
				<img src="images/recent6.jpg" data-highres="images/recent6-6.jpg" "/>
				<img src="images/recent7.jpg" data-highres="images/recent7-7.jpg" "/>
				<img src="images/recent8.jpg" data-highres="images/recent8-8.jpg" "/>
			</div>
		</section>
	</div>
</section>
<!-- /recent pics section -->
<!-- last section -->
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
<script src="js/jarallax.js"></script>
<script type="text/javascript">
    /* init Jarallax */
    $('.jarallax').jarallax({
        speed: 0.6,
        imgWidth: 1366,
        imgHeight: 768
    })
</script>
<script src='js/aos.js'></script>
<script src="js/aos2.js"></script>
<!-- js for recent pics section -->
<script src="js/jquery.mb.thumbGallery.js"></script>
<script>

    var isIframe = function () {
        var a = !1;
        try {
            self.location.href != top.location.href && (a = !0)
        } catch (b) {
            a = !0
        }
        return a
    };
    if (!isIframe()) {
        var logo = $("<a href='#' style='position:absolute;top:0;z-index:1000'><img id='logo' border='0' src='#' alt='mb.ideas.repository'></a>");
        $("#wrapper").prepend(logo), $("#logo").fadeIn()
    }

    /* Extend or modify effects */
    jQuery.thumbGrid.transitions.fadeIn = { in: { x: "0", opacity: 0, scale: 0.9 }, out: { x: 0, opacity: 0 } };
    jQuery.thumbGrid.transitions.fadeOut = { in: { x: "0", opacity: 0 }, out: { x: 0, scale: 0.9, opacity: 0 } };
    jQuery.thumbGrid.transitions.slideLeft = { in: { x: $(window).width(), opacity: 0 }, out: { x: -$(window).width(), opacity: 0 }, ease: "cubic-bezier(.43,.18,.81,1.07)" };
    jQuery.thumbGrid.transitions.slideRight = { in: { x: 0, opacity: 0 }, out: { x: $(window).width(), opacity: 0 }, ease: "cubic-bezier(.43,.18,.81,1.07)" };

    /* Initialize the gallery */
    jQuery("#thumbGrid").thumbGrid();

    /* customizer */
    jQuery("#effect").on("change", function () {
        var x = $(this).val();
        jQuery("#thumbGrid").data("nav_effect", x);
    });

    jQuery("#delay").on("change", function () {
        var x = parseFloat($(this).val());
        jQuery("#thumbGrid").data("nav_delay", x);
    });

    jQuery("#timing").on("change", function () {
        var x = parseFloat($(this).val());
        jQuery("#thumbGrid").data("nav_timing", x);
    });

    if (jQuery.isMobile) {
        jQuery("body").css({ marginBottom: 140 })
    }


</script>
<!-- /js for recent pics section -->
<!-- js for testimonials -->
<script src="js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {

        // Slideshow 1
        $("#slider1").responsiveSlides({
            maxwidth: 800,
            speed: 800
        });
    });
</script>
<!-- /js for testimonials -->
<!-- js for banner section -->
<script type="text/javascript" src="js/jquery.ba-cond.min.js"></script>
<script type="text/javascript" src="js/jquery.slitslider.js"></script>
<script type="text/javascript">
    $(function () {

        var Page = (function () {

            var $nav = $('#nav-dots > span'),
                slitslider = $('#slider').slitslider({
                    onBeforeChange: function (slide, pos) {

                        $nav.removeClass('nav-dot-current');
                        $nav.eq(pos).addClass('nav-dot-current');

                    }
                }),

                init = function () {

                    initEvents();

                },
                initEvents = function () {

                    $nav.each(function (i) {

                        $(this).on('click', function (event) {

                            var $dot = $(this);

                            if (!slitslider.isActive()) {

                                $nav.removeClass('nav-dot-current');
                                $dot.addClass('nav-dot-current');

                            }

                            slitslider.jump(i + 1);
                            return false;

                        });

                    });

                };

            return { init: init };

        })();

        Page.init();

    });
</script>
<!-- /js for banner section -->
</body>
</html>