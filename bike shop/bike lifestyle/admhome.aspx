<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admhome.aspx.cs" Inherits="admhome" %>

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
                <li><a href="admadd.aspx">Manage</a></li>
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
            <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center" Width="974px">
                <h3 class="text-center" data-aos="zoom-in">Supplier list</h3>
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="90px" Width="956px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sid" HeaderText="id" ReadOnly="True" SortExpression="sid" />
                        <asp:BoundField DataField="sname" HeaderText="name" SortExpression="sname" />
                        <asp:BoundField DataField="scontact" HeaderText="contact" SortExpression="scontact" />
                        <asp:BoundField DataField="semail" HeaderText="email" SortExpression="semail" />
                        <asp:BoundField DataField="saddress" HeaderText="address" SortExpression="saddress" />
                        <asp:BoundField DataField="sdetails" HeaderText="details" SortExpression="sdetails" />
                        <asp:CommandField HeaderText="update" ShowDeleteButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cstr %>" SelectCommand="SELECT * FROM [supptbl]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [supptbl] WHERE [sid] = @original_sid AND [sname] = @original_sname AND [scontact] = @original_scontact AND [semail] = @original_semail AND [saddress] = @original_saddress AND [sdetails] = @original_sdetails AND [spassword] = @original_spassword" InsertCommand="INSERT INTO [supptbl] ([sid], [sname], [scontact], [semail], [saddress], [sdetails], [spassword]) VALUES (@sid, @sname, @scontact, @semail, @saddress, @sdetails, @spassword)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [supptbl] SET [sname] = @sname, [scontact] = @scontact, [semail] = @semail, [saddress] = @saddress, [sdetails] = @sdetails, [spassword] = @spassword WHERE [sid] = @original_sid AND [sname] = @original_sname AND [scontact] = @original_scontact AND [semail] = @original_semail AND [saddress] = @original_saddress AND [sdetails] = @original_sdetails AND [spassword] = @original_spassword">
                    <DeleteParameters>
                        <asp:Parameter Name="original_sid" Type="String" />
                        <asp:Parameter Name="original_sname" Type="String" />
                        <asp:Parameter Name="original_scontact" Type="String" />
                        <asp:Parameter Name="original_semail" Type="String" />
                        <asp:Parameter Name="original_saddress" Type="String" />
                        <asp:Parameter Name="original_sdetails" Type="String" />
                        <asp:Parameter Name="original_spassword" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sid" Type="String" />
                        <asp:Parameter Name="sname" Type="String" />
                        <asp:Parameter Name="scontact" Type="String" />
                        <asp:Parameter Name="semail" Type="String" />
                        <asp:Parameter Name="saddress" Type="String" />
                        <asp:Parameter Name="sdetails" Type="String" />
                        <asp:Parameter Name="spassword" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sname" Type="String" />
                        <asp:Parameter Name="scontact" Type="String" />
                        <asp:Parameter Name="semail" Type="String" />
                        <asp:Parameter Name="saddress" Type="String" />
                        <asp:Parameter Name="sdetails" Type="String" />
                        <asp:Parameter Name="spassword" Type="String" />
                        <asp:Parameter Name="original_sid" Type="String" />
                        <asp:Parameter Name="original_sname" Type="String" />
                        <asp:Parameter Name="original_scontact" Type="String" />
                        <asp:Parameter Name="original_semail" Type="String" />
                        <asp:Parameter Name="original_saddress" Type="String" />
                        <asp:Parameter Name="original_sdetails" Type="String" />
                        <asp:Parameter Name="original_spassword" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center" Width="766px">
                <h3 class="text-center" data-aos="zoom-in">Requested supplies</h3>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="srid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="98px" Width="698px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="srid" HeaderText="id" ReadOnly="True" SortExpression="srid" />
                        <asp:BoundField DataField="srcontact" HeaderText="contact" SortExpression="srcontact" />
                        <asp:BoundField DataField="srdetails" HeaderText="required details" SortExpression="srdetails" />
                        <asp:BoundField DataField="srdate" HeaderText="date" SortExpression="srdate" />
                        <asp:BoundField DataField="srfeedback" HeaderText="response" SortExpression="srfeedback" />
                        <asp:CommandField HeaderText="edit for feedback" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [suppreqtbl] WHERE [srid] = @original_srid AND [srcontact] = @original_srcontact AND [srdetails] = @original_srdetails AND [srdate] = @original_srdate AND [srfeedback] = @original_srfeedback" InsertCommand="INSERT INTO [suppreqtbl] ([srid], [srcontact], [srdetails], [srdate], [srfeedback]) VALUES (@srid, @srcontact, @srdetails, @srdate, @srfeedback)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [suppreqtbl] ORDER BY [srdate]" UpdateCommand="UPDATE [suppreqtbl] SET [srcontact] = @srcontact, [srdetails] = @srdetails, [srdate] = @srdate, [srfeedback] = @srfeedback WHERE [srid] = @original_srid AND [srcontact] = @original_srcontact AND [srdetails] = @original_srdetails AND [srdate] = @original_srdate AND [srfeedback] = @original_srfeedback">
                    <DeleteParameters>
                        <asp:Parameter Name="original_srid" Type="String" />
                        <asp:Parameter Name="original_srcontact" Type="String" />
                        <asp:Parameter Name="original_srdetails" Type="String" />
                        <asp:Parameter Name="original_srdate" Type="String" />
                        <asp:Parameter Name="original_srfeedback" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="srid" Type="String" />
                        <asp:Parameter Name="srcontact" Type="String" />
                        <asp:Parameter Name="srdetails" Type="String" />
                        <asp:Parameter Name="srdate" Type="String" />
                        <asp:Parameter Name="srfeedback" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="srcontact" Type="String" />
                        <asp:Parameter Name="srdetails" Type="String" />
                        <asp:Parameter Name="srdate" Type="String" />
                        <asp:Parameter Name="srfeedback" Type="String" />
                        <asp:Parameter Name="original_srid" Type="String" />
                        <asp:Parameter Name="original_srcontact" Type="String" />
                        <asp:Parameter Name="original_srdetails" Type="String" />
                        <asp:Parameter Name="original_srdate" Type="String" />
                        <asp:Parameter Name="original_srfeedback" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            <br />
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Width="762px">
           <h3 class="text-center" data-aos="zoom-in">Request supply</h3>
                <br />
               <asp:Label ID="prntmsg" runat="server"></asp:Label>
               <br />
               <asp:TextBox ID="srcontact" runat="server" class="form-control" placeholder="supplier contact no" Width="234px" ></asp:TextBox>
               <br />
               <asp:TextBox ID="srdetails" runat="server" class="form-control" placeholder="Required Items(eg. Bikes, Bike Part's name, etc)" Width="234px"></asp:TextBox>
               <br />
               
               <asp:Button ID="submitbtn" runat="server" Text="Submit" class="form-control" Width="100px" BackColor="#0066FF" ForeColor="Black" OnClick="submitbtn_Click"/>
           <br />
           
           
       </asp:Panel>
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