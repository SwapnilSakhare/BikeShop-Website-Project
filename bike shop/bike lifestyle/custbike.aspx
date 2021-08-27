<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custbike.aspx.cs" Inherits="custbike" %>

<!DOCTYPE html>

<html>
<head>
    <title>buy bike</title>
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
            width: 38%;
            border: 1px solid #5BC0DE;
        }
        .auto-style2 {
            width: 158px;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style4 {
            width: 158px;
            height: 27px;
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
                <a class="navbar-brand" href="custhome.aspx">
                    <h1>Bike Lifestyle</h1>
                </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav slide-nav">
                    <li class="active current"><a href="custhome.aspx">Home</a></li>
                    <li><a href="custbuybike.aspx">buy bikes</a></li>
                    <li><a href="custbuyparts.aspx">buy spare parts</a></li>
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
            <h3 class="text-center" data-aos="zoom-in">Confirm</h3>
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb" data-aos="zoom-in">
                        <li><a href="custhome.aspx">Home</a>
                        </li>
                        <li class="active">buy</li>

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
                <table class="auto-style1">
                    <tr>
                        <td colspan="3">&nbsp;</td>
                        <td colspan="3">
                            <asp:Label ID="prntmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>product id</td>
                        <td>:</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Label ID="pid" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>amount</td>
                        <td>:</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Label ID="pamount" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" BackColor="#3399FF" ForeColor="Black" Height="39px" OnClick="Button1_Click" Text="submit" Width="90px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                </table>
            </form>
        </div>
    </section>


    <!-- last section -->
    <section class="last-w3layouts">
        <div class="container">
            <a href="custhome.aspx" class="bottom-agile">
                <h2 class="text-center">Bike Lifestyle</h2>
            </a>
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
