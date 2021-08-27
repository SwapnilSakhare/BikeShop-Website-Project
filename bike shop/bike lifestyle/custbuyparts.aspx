<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custbuyparts.aspx.cs" Inherits="custbuyparts" %>

<!DOCTYPE html>

<html>
<head>
    <title>buy parts</title>
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
                <a class="navbar-brand" href="custhome.aspx">
                    <h1>Bike Lifestyle</h1>
                </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav slide-nav">
                    <li><a href="custhome.aspx">Home</a></li>
                    <li><a href="custbuybike.aspx">buy bikes</a></li>
                    <li class="active current"><a href="custbuyparts.aspx">buy bike Accesories</a></li>
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
            <h3 class="text-center" data-aos="zoom-in">Accessories</h3>
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb" data-aos="zoom-in">
                        <li><a href="custhome.aspx">Home</a>
                        </li>
                        <li class="active">Buy Accessories</li>
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
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="bpid" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <table border="1" class="nav-justified">
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td class="auto-style1">ID : </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="bpidLabel" runat="server" Text='<%# Eval("bpid") %>' />
                                    </td>
                                    <td class="auto-style2">&nbsp;</td>
                                    <td class="auto-style2" colspan="2">quantity : </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="bpquantityLabel" runat="server" Text='<%# Eval("bpquantity") %>' />
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
                                    <td>Accessory</td>
                                    <td class="auto-style3">Name</td>
                                    <td class="auto-style3">&nbsp;:</td>
                                    <td class="auto-style3" colspan="3">&nbsp;<asp:Label ID="bpnameLabel" runat="server" Text='<%# Eval("bpname") %>' />
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    
                                    <td class="auto-style1">&nbsp;</td>

                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td class="auto-style2" colspan="2">price</td>
                                    <td class="auto-style1">: </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="bppriceLabel" runat="server" Text='<%# Eval("bpprice") %>' />
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
                                        <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("bpid") %>'
                                            CommandName="quanbtn" ForeColor="#0066FF" Height="38px" Text="Buy" Width="105px" />
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
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cstr %>" SelectCommand="SELECT * FROM [bikeparttbl]"></asp:SqlDataSource>
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
