<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admblog.aspx.cs" Inherits="admblog" %>

<!DOCTYPE html>

<html>
<head>
<title>blog</title>
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
				<li><a href="admhome.aspx">Home</a></li>
                <li><a href="admadd.aspx">Add</a></li>
                <li class="active current"><a href="admblog.aspx">Blog</a></li>
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
		<h3 class="text-center" data-aos="zoom-in">Blogs</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="admhome.aspx">Home</a>
                    </li>
                    <li class="active">Blog</li>
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
               <h3 class="text-center" data-aos="zoom-in">Blogs</h3>
               <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bgid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="619px">

                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="bgid" HeaderText="id" ReadOnly="True" SortExpression="bgid" />
                       <asp:BoundField DataField="custid" HeaderText="customer id" SortExpression="custid" />
                       <asp:BoundField DataField="bgimage" HeaderText="image" SortExpression="bgimage" />
                       <asp:BoundField DataField="bgfeedback" HeaderText="feedback" SortExpression="bgfeedback" />
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
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [blogtbl] WHERE [bgid] = @original_bgid AND [custid] = @original_custid AND [bgimage] = @original_bgimage AND [bgfeedback] = @original_bgfeedback" InsertCommand="INSERT INTO [blogtbl] ([bgid], [custid], [bgimage], [bgfeedback]) VALUES (@bgid, @custid, @bgimage, @bgfeedback)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [blogtbl]" UpdateCommand="UPDATE [blogtbl] SET [custid] = @custid, [bgimage] = @bgimage, [bgfeedback] = @bgfeedback WHERE [bgid] = @original_bgid AND [custid] = @original_custid AND [bgimage] = @original_bgimage AND [bgfeedback] = @original_bgfeedback">
                   <DeleteParameters>
                       <asp:Parameter Name="original_bgid" Type="String" />
                       <asp:Parameter Name="original_custid" Type="String" />
                       <asp:Parameter Name="original_bgimage" Type="String" />
                       <asp:Parameter Name="original_bgfeedback" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="bgid" Type="String" />
                       <asp:Parameter Name="custid" Type="String" />
                       <asp:Parameter Name="bgimage" Type="String" />
                       <asp:Parameter Name="bgfeedback" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="custid" Type="String" />
                       <asp:Parameter Name="bgimage" Type="String" />
                       <asp:Parameter Name="bgfeedback" Type="String" />
                       <asp:Parameter Name="original_bgid" Type="String" />
                       <asp:Parameter Name="original_custid" Type="String" />
                       <asp:Parameter Name="original_bgimage" Type="String" />
                       <asp:Parameter Name="original_bgfeedback" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
           </asp:Panel>
           <br />
           <asp:Panel ID="Panel2" runat="server">
               <h3 class="text-center" data-aos="zoom-in">comments</h3>
               <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="619px">

                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="cid" HeaderText="id" ReadOnly="True" SortExpression="cid" />
                       <asp:BoundField DataField="custcontact" HeaderText="cust id" SortExpression="custcontact" />
                       <asp:BoundField DataField="ccomment" HeaderText="comment" SortExpression="ccomment" />
                       <asp:BoundField DataField="cbgid" HeaderText="blog id" SortExpression="cbgid" />
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
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [commenttbl] WHERE [cid] = @original_cid AND [custcontact] = @original_custcontact AND [ccomment] = @original_ccomment AND [cbgid] = @original_cbgid" InsertCommand="INSERT INTO [commenttbl] ([cid], [custcontact], [ccomment], [cbgid]) VALUES (@cid, @custcontact, @ccomment, @cbgid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [commenttbl]" UpdateCommand="UPDATE [commenttbl] SET [custcontact] = @custcontact, [ccomment] = @ccomment, [cbgid] = @cbgid WHERE [cid] = @original_cid AND [custcontact] = @original_custcontact AND [ccomment] = @original_ccomment AND [cbgid] = @original_cbgid">
                   <DeleteParameters>
                       <asp:Parameter Name="original_cid" Type="String" />
                       <asp:Parameter Name="original_custcontact" Type="String" />
                       <asp:Parameter Name="original_ccomment" Type="String" />
                       <asp:Parameter Name="original_cbgid" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="cid" Type="String" />
                       <asp:Parameter Name="custcontact" Type="String" />
                       <asp:Parameter Name="ccomment" Type="String" />
                       <asp:Parameter Name="cbgid" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="custcontact" Type="String" />
                       <asp:Parameter Name="ccomment" Type="String" />
                       <asp:Parameter Name="cbgid" Type="String" />
                       <asp:Parameter Name="original_cid" Type="String" />
                       <asp:Parameter Name="original_custcontact" Type="String" />
                       <asp:Parameter Name="original_ccomment" Type="String" />
                       <asp:Parameter Name="original_cbgid" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
           </asp:Panel>
       </form>
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