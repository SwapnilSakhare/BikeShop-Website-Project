<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supphome.aspx.cs" Inherits="supphome" %>

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
			<a class="navbar-brand" href="supphome.aspx"><h1>Bike Lifestyle</h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav slide-nav">
				<li class="active current"><a href="supphome.aspx">Home</a></li>
				
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
		<h3 class="text-center" data-aos="zoom-in">WELCOME</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li  class="active"><a href="supphome.aspx">Home</a>
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
       <form runat="server">
           <asp:Panel runat="server">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="srid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="642px">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="srid" HeaderText="srid" ReadOnly="True" SortExpression="srid" />
                       <asp:BoundField DataField="srdetails" HeaderText="srdetails" SortExpression="srdetails" />
                       <asp:BoundField DataField="srdate" HeaderText="srdate" SortExpression="srdate" />
                       <asp:BoundField DataField="srfeedback" HeaderText="srfeedback" SortExpression="srfeedback" />
                       <asp:CommandField ShowEditButton="True" />
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
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [suppreqtbl] WHERE [srid] = @original_srid AND (([srdetails] = @original_srdetails) OR ([srdetails] IS NULL AND @original_srdetails IS NULL)) AND (([srdate] = @original_srdate) OR ([srdate] IS NULL AND @original_srdate IS NULL)) AND (([srfeedback] = @original_srfeedback) OR ([srfeedback] IS NULL AND @original_srfeedback IS NULL))" InsertCommand="INSERT INTO [suppreqtbl] ([srid], [srdetails], [srdate], [srfeedback]) VALUES (@srid, @srdetails, @srdate, @srfeedback)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [srid], [srdetails], [srdate], [srfeedback] FROM [suppreqtbl] WHERE ([srcontact] = @srcontact)" UpdateCommand="UPDATE [suppreqtbl] SET [srdetails] = @srdetails, [srdate] = @srdate, [srfeedback] = @srfeedback WHERE [srid] = @original_srid AND (([srdetails] = @original_srdetails) OR ([srdetails] IS NULL AND @original_srdetails IS NULL)) AND (([srdate] = @original_srdate) OR ([srdate] IS NULL AND @original_srdate IS NULL)) AND (([srfeedback] = @original_srfeedback) OR ([srfeedback] IS NULL AND @original_srfeedback IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_srid" Type="String" />
                       <asp:Parameter Name="original_srdetails" Type="String" />
                       <asp:Parameter Name="original_srdate" Type="String" />
                       <asp:Parameter Name="original_srfeedback" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="srid" Type="String" />
                       <asp:Parameter Name="srdetails" Type="String" />
                       <asp:Parameter Name="srdate" Type="String" />
                       <asp:Parameter Name="srfeedback" Type="String" />
                   </InsertParameters>
                   <SelectParameters>
                       <asp:SessionParameter Name="srcontact" SessionField="logid" Type="String" />
                   </SelectParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="srdetails" Type="String" />
                       <asp:Parameter Name="srdate" Type="String" />
                       <asp:Parameter Name="srfeedback" Type="String" />
                       <asp:Parameter Name="original_srid" Type="String" />
                       <asp:Parameter Name="original_srdetails" Type="String" />
                       <asp:Parameter Name="original_srdate" Type="String" />
                       <asp:Parameter Name="original_srfeedback" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
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
		<a href="supphome.aspx" class="bottom-agile"><h2 class="text-center">Bike Lifestyle</h2></a>
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