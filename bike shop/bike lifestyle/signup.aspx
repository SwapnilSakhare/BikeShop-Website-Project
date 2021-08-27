<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html>
<head>
<title>SIGN UP</title>
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
				<li><a href="about.aspx">About</a></li>
				<li class="active current"><a href="signup.aspx">Sign up</a></li>
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
		<h3 class="text-center" data-aos="zoom-in">Sign up</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="home.aspx">Home</a>
                    </li>
                    <li class="active">sign up</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>	
<!-- /header section -->

<section class="team-w3layouts">	
	<div class="container">
        <!-- sign up form -->
       
               <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Width="538px">
           <form id="Form1" runat="server">
               <asp:Label ID="prntmsg" runat="server"></asp:Label>
               <br />
               <asp:TextBox ID="uname" runat="server" class="form-control" placeholder="name" Width="234px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required"
                       ControlToValidate="uname"></asp:RequiredFieldValidator>
               <br />
               <asp:TextBox ID="ucontact" runat="server" class="form-control" placeholder="contact" Width="234px"></asp:TextBox>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="check mobile no" 
                   ValidationExpression="^[0-9]\d{9}$" ControlToValidate="ucontact" 
                   Font-Size="Medium"></asp:RegularExpressionValidator>

               <br />
               <asp:TextBox ID="uemail" runat="server" class="form-control" placeholder="email" Width="234px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="check email" 
                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="uemail" 
                   Font-Size="Medium"></asp:RegularExpressionValidator>
               <br />
               <asp:TextBox ID="uaddress" runat="server" class="form-control" placeholder="address" Width="234px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"
                       ControlToValidate="uaddress"></asp:RequiredFieldValidator>
                <br />
               <asp:TextBox ID="upassword" runat="server" class="form-control" placeholder="password" Width="234px" TextMode="Password"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="enter correct password" 
                   ValidationExpression="^[a-zA-Z0-9]{8}$" ControlToValidate="upassword" 
                   Font-Size="Medium"></asp:RegularExpressionValidator>
               <br />
               <asp:Button ID="submitbtn" runat="server" Text="Submit" class="form-control" Width="100px" OnClick="submitbtn_Click" BackColor="#0066FF" ForeColor="Black"/>
           <br />
           
           </form>
       </asp:Panel>
       

    </div>
	
</section>	
   
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