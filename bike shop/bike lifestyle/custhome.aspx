<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custhome.aspx.cs" Inherits="custhome" %>

<!DOCTYPE html>

<html>
<head>
<title>home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
<link href="css/pogo-slider.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css -->
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #5BC0DE;
        }
        .auto-style2 {
            width: 20px;
        }
        .auto-style3 {
            width: 497px;
        }
    </style>
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
			<a class="navbar-brand" href="custhome.aspx"><h1>Bike Lifestyle</h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav slide-nav">
				<li class="active current"><a href="custhome.aspx">Home</a></li>
                <li><a href="custbuybike.aspx">buy bikes</a></li>
                <li><a href="custbuyparts.aspx">buy bike Accessories</a></li>
				<li><a href="home.aspx">Log out</a></li>
                

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
		<h3 class="text-center" data-aos="zoom-in">Blog</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li  class="active"><a href="custhome.aspx">Home</a>
                    </li>
                    <%--<li class="active">sign up</li>--%>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>	
<!-- /header section -->
<section class="about-w3layouts">
	<div class="container">
       <form id="Form1" runat="server">
           <asp:Panel ID="Panel2" runat="server">
              <h3 class="text-center" data-aos="zoom-in">Post</h3>
               <table class="auto-style1">
                   <tr>
                       <td class="auto-style3">&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style3">&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                  
                   <tr>
                       <td class="auto-style3">&nbsp;</td>
                       <td>
                           <asp:TextBox ID="pcomment" runat="server" class="form-control" placeholder="comment" Width="234px"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style3">&nbsp;</td>
                       <td>
                           <asp:FileUpload ID="uploadpost" runat="server" class="form-control" placeholder="name" Width="234px" />
                       </td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style3">&nbsp;</td>
                       <td>
                           <asp:Button ID="postbtn" runat="server" BackColor="#3399FF" class="form-control" ForeColor="Black" OnClick="postbtn_Click" Text="post" Width="234px" />
                       </td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
               </table>
              <br />
          </asp:Panel>
           <asp:Label ID="prntmsg" runat="server"></asp:Label>
           <asp:Panel ID="Panel1" runat="server">
                <h3 class="text-center" data-aos="zoom-in">View Post</h3>
               <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" DataKeyField="bgid" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">

                   <ItemTemplate>
                       <table class="auto-style1">
                           <tr>
                               <td>&nbsp;</td>
                               <td class="auto-style2">id</td>
                               <td>:</td>
                               <td>
                                   <asp:Label ID="bgidLabel" runat="server" Text='<%# Eval("bgid") %>' />
                               </td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td colspan="3" rowspan="2">
                                   <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("bgid") %>' CommandName="imgbtn" Height="176px" ImageUrl='<%# Eval("bgimage") %>' Width="217px" />
                               </td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>cust</td>
                               <td>:</td>
                               <td>
                                   <asp:Label ID="custidLabel" runat="server" Text='<%# Eval("custid") %>' />
                               </td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>Caption</td>
                               <td>:</td>
                               <td>
                                   <asp:Label ID="bgfeedbackLabel" runat="server" Text='<%# Eval("bgfeedback") %>' />
                               </td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                       </table>
                       <br />
                       <br />
                       <br />
                   </ItemTemplate>

               </asp:DataList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cstr %>" SelectCommand="SELECT * FROM [blogtbl]"></asp:SqlDataSource>
           </asp:Panel>
       </form>
	</div>
</section>

<!-- last section -->
<section class="last-w3layouts">
	<div class="container">
		<a href="custhome.aspx" class="bottom-agile"><h2 class="text-center">Bike Lifestyle</h2></a>
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