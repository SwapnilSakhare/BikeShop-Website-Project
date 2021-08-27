<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custparts.aspx.cs" Inherits="custparts" %>

<!DOCTYPE html>

<html>
<head>
    <title>buy Accessories</title>
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
            width: 499px;
        }
        .auto-style2 {
            width: 268435552px;
        }
        .auto-style5 {
            width: 19px;
        }
        .auto-style6 {
            width: 10px;
        }
        .auto-style7 {
            width: 5px;
        }
        .auto-style8 {
            width: 182px;
        }
        .auto-style9 {
            width: 238px;
        }
        .auto-style10 {
            width: 62px;
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
                    <li><a href="custbuyparts.aspx">buy accessories</a></li>
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
                <asp:Panel runat="server" Width="506px">
                <table class="auto-style1" border="1">
                    <b>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                        <td colspan="3">
                            <asp:Label ID="prntmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    </b>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style9">Product&nbsp;ID </td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style10">:</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td colspan="2" class="auto-style6">
                            <asp:Label ID="pid" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        
                        <td class="auto-style1">&nbsp;</td>

                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style9">Amount </td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style10">:</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td colspan="2" class="auto-style6">
                            <asp:Label ID="pamount" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td colspan="2" class="auto-style6">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td colspan="2" class="auto-style6">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td colspan="2" class="auto-style6">
                            <asp:Button ID="Button1" runat="server" BackColor="#3399FF" ForeColor="Black" Height="39px" OnClick="Button1_Click" Text="submit" Width="90px" />
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td colspan="2" class="auto-style6">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
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