<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admpayment.aspx.cs" Inherits="admhome" %>

<!DOCTYPE html>

<html>
<head>
<title>payments</title>
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
			<a class="navbar-brand" href="admhome.aspx"><h1>Bike Lifestyle</h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav slide-nav">
				<li class="active current"><a href="admhome.aspx">Home</a></li>
                <li><a href="admadd.aspx">Add</a></li>
                <li><a href="admblog.aspx">Blog</a></li>
                 <li><a href="admpayment.aspx">Requests</a></li>
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
		<h3 class="text-center" data-aos="zoom-in">Welcome</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li  class="active"><a href="admhome.aspx">Home</a>
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
            <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center" Width="1033px">
                <h3 class="text-center" data-aos="zoom-in">Bike Requests</h3>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="reqid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1020px">

                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="reqid" HeaderText="request id" ReadOnly="True" SortExpression="payid" />
                        <asp:BoundField DataField="reqproductid" HeaderText="product id" SortExpression="productid" />
                        <asp:BoundField DataField="reqcustid" HeaderText="custumor id" SortExpression="custid" />
                        <asp:BoundField DataField="uname" HeaderText="custumor name" SortExpression="uname" />
                        <asp:BoundField DataField="uaddress" HeaderText="custumor address" SortExpression="uaddress" />
                        <asp:BoundField DataField="reqpamount" HeaderText="amount" SortExpression="pamount" />
                        <%--  <asp:BoundField DataField="patmpin" HeaderText="atm pin" SortExpression="patmpin" />
                        <asp:BoundField DataField="uname" HeaderText="customer name" SortExpression="uname" />
                        <asp:BoundField DataField="pexdate" HeaderText="expiry date" SortExpression="pexdate" />
                        <asp:BoundField DataField="pcvv" HeaderText="cvv" SortExpression="pcvv" />--%>
                        <asp:CommandField HeaderText="update" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [requesttbl] WHERE [reqid] = @original_reqid AND [reqproductid] = @original_reqproductid AND [reqcustid] = @original_reqcustid AND [reqpamount] = @original_reqpamount" InsertCommand="INSERT INTO [requesttbl] ([reqid], [reqproductid], [reqcustid], [reqpamount]) VALUES (@reqid, @reqproductid, @reqcustid, @reqpamount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT requesttbl.*, custtbl.uname, custtbl.uaddress FROM requesttbl CROSS JOIN custtbl" UpdateCommand="UPDATE [requesttbl] SET [reqproductid] = @reqproductid, [reqcustid] = @reqcustid, [reqpamount] = @reqpamount WHERE [reqid] = @original_reqid AND [reqproductid] = @original_reqproductid AND [reqcustid] = @original_reqcustid AND [reqpamount] = @original_reqpamount">
                    <DeleteParameters>
                        <asp:Parameter Name="original_reqid" Type="String" />
                        <asp:Parameter Name="original_reqproductid" Type="String" />
                        <asp:Parameter Name="original_reqcustid" Type="String" />
                        <asp:Parameter Name="original_reqpamount" Type="Int32" />
                        <%--<asp:Parameter Name="original_pcardno" Type="String" />
                        <asp:Parameter Name="original_patmpin" Type="Int32" />
                        <asp:Parameter Name="original_pexdate" Type="String" />
                        <asp:Parameter Name="original_pcvv" Type="Int32" />--%>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="reqid" Type="String" />
                        <asp:Parameter Name="reqproductid" Type="String" />
                        <asp:Parameter Name="reqcustid" Type="String" />
                        <asp:Parameter Name="reqpamount" Type="Int32" />
                        <%--<asp:Parameter Name="pcardno" Type="String" />
                        <asp:Parameter Name="patmpin" Type="Int32" />
                        <asp:Parameter Name="pexdate" Type="String" />
                        <asp:Parameter Name="pcvv" Type="Int32" />--%>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="reqproductid" Type="String" />
                        <asp:Parameter Name="reqcustid" Type="String" />
                        <asp:Parameter Name="reqpamount" Type="Int32" />
                       <%-- <asp:Parameter Name="pcardno" Type="String" />
                        <asp:Parameter Name="patmpin" Type="Int32" />
                        <asp:Parameter Name="pexdate" Type="String" />
                        <asp:Parameter Name="pcvv" Type="Int32" />--%>
                        <asp:Parameter Name="original_reqid" Type="String" />
                        <asp:Parameter Name="original_reqproductid" Type="String" />
                        <asp:Parameter Name="original_reqcustid" Type="String" />
                        <asp:Parameter Name="original_reqpamount" Type="Int32" />
                        <%--<asp:Parameter Name="original_pcardno" Type="String" />
                        <asp:Parameter Name="original_patmpin" Type="Int32" />
                        <asp:Parameter Name="original_pexdate" Type="String" />
                        <asp:Parameter Name="original_pcvv" Type="Int32" />--%>
                    </UpdateParameters>
                </asp:SqlDataSource>
              </asp:Panel>
            <br />
           
       </form>
	</div>
</section>
<section class="team-w3layouts">	
	<div class="container">
        <!-- sign up form -->
       
       

    </div>
	
</section>	
   
<!-- last section -->
<section class="last-w3layouts">
	<div class="container">
		<a href="admhome.aspx" class="bottom-agile"><h2 class="text-center">Bike Lifestyle</h2></a>
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