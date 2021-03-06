<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custbuybike.aspx.cs" Inherits="custbuybike" %>

<!DOCTYPE html>

<html>
<head>
<title>buy bikes</title>
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
            height: 16px;
        }
        .auto-style2 {
            height: 16px;
            width: 87px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            height: 16px;
            width: 24px;
        }
        .auto-style5 {
            width: 24px;
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
				<li><a href="custhome.aspx">Home</a></li>
                <li class="active current"><a href="custbuybike.aspx">buy bikes</a></li>
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
		<h3 class="text-center" data-aos="zoom-in">bikes</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="custhome.aspx">Home</a>
                    </li>
                    <li class="active">buy bikes</li>
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
           <asp:Panel ID="Panel1" runat="server">
               <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="bid" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                   <AlternatingItemStyle BackColor="White" />
                   <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <ItemStyle BackColor="#EFF3FB" />
                   <ItemTemplate>
                       <br />
                       <table border="1" class="nav-justified">
                           <tr>
                               <td class="auto-style1">&nbsp;</td>
                               <td class="auto-style1">ID : </td>
                               <td class="auto-style1">
                                   <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
                               </td>
                               <td class="auto-style2">&nbsp;</td>
                               <td class="auto-style2" colspan="2">quantity : </td>
                               <td class="auto-style1">
                                   <asp:Label ID="bquantityLabel" runat="server" Text='<%# Eval("bquantity") %>' />
                               </td>
                               <td class="auto-style4">&nbsp;</td>
                               <td class="auto-style1">&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style3" colspan="3">&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style5">&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                               <td colspan="8">
                                   <asp:Image ID="Image1" runat="server" Height="175px" ImageUrl='<%# Eval("bimage") %>' Width="305px" />
                               </td>
                               <td class="auto-style5">&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style3" colspan="3">&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style5">&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style1">&nbsp;</td>
                               <td>bike</td>
                               <td class="auto-style3">name</td>
                               <td class="auto-style3">&nbsp;:</td>
                               <td class="auto-style3" colspan="3">&nbsp;<asp:Label ID="bnameLabel" runat="server" Text='<%# Eval("bname") %>' />
                               </td>
                               <td class="auto-style5">&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style1">&nbsp;</td>
                               <td class="auto-style2" colspan="2">price</td>
                               <td class="auto-style1">&nbsp:</td>
                               <td class="auto-style1" colspan="3">
                                   <asp:Label ID="bpriceLabel" runat="server" Text='<%# Eval("bprice") %>' />
                               </td>
                               <td class="auto-style4"></td>
                               <td class="auto-style1"></td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style3" colspan="3">&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style5">&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style3" colspan="3">
                                   <asp:Button ID="Button1" runat="server" Text="Buy" BackColor="#0066FF"
                                        CommandName="quanbtn" Height="38px" Width="105px" CommandArgument='<%#Eval("bid") %>' />
                               </td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style5">&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style3" colspan="3">&nbsp;</td>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                               <td class="auto-style5">&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                       </table>
                       <br />
                       <br />
                   </ItemTemplate>
                   <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               </asp:DataList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cstr %>" SelectCommand="SELECT * FROM [biketbl]"></asp:SqlDataSource>
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