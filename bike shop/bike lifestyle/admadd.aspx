<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admadd.aspx.cs" Inherits="admadd" %>

<!DOCTYPE html>

<html>
<head>
<title>Add</title>
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
                <li class="active current"><a href="admadd.aspx">Add</a></li>
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
		<h3 class="text-center" data-aos="zoom-in">Add supplier / bikes /parts / manage customer</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="admhome.aspx">Home</a>
                    </li>
                    <li class="active">Add</li>
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
           <%--Select fields--%>
           <asp:Panel ID="Panelselecttype" runat="server">
               <asp:RadioButton ID="rbaddsupp" runat="server" GroupName="selecttype" AutoPostBack="true" Text="Add Supplier" ForeColor="Black" OnCheckedChanged="rbaddsupp_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="rbaddbike" Text="Bike" runat="server" GroupName="selecttype" AutoPostBack="true" ForeColor="Black" OnCheckedChanged="rbaddbike_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="rbaddparts" runat="server" GroupName="selecttype" Text="Bike Accessories" AutoPostBack="true" ForeColor="Black" OnCheckedChanged="rbaddparts_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="rbmcustomer" runat="server" GroupName="selecttype" Text="Manage customer" AutoPostBack="true" ForeColor="Black" OnCheckedChanged="rbmcustomer_CheckedChanged" />
                </asp:Panel>
           <%--end select fields--%>
           <%--add / manage supplier--%>
           <asp:Panel runat="server" ID="paneladdsupp" Visible="false" >
               <br />
               <h3 class="text-center" data-aos="zoom-in" >Supplier list</h3>
               <br />
               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="678px">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                       <asp:BoundField DataField="sid" HeaderText="id" ReadOnly="True" SortExpression="sid" />
                       <asp:BoundField DataField="sname" HeaderText="name" SortExpression="sname" />
                       <asp:BoundField DataField="scontact" HeaderText="contact" SortExpression="scontact" />
                       <asp:BoundField DataField="semail" HeaderText="email" SortExpression="semail" />
                       <asp:BoundField DataField="saddress" HeaderText="address" SortExpression="saddress" />
                       <asp:BoundField DataField="sdetails" HeaderText="details" SortExpression="sdetails" />
                       <asp:BoundField DataField="spassword" HeaderText="password" SortExpression="spassword" />
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
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [supptbl] WHERE [sid] = @original_sid AND [sname] = @original_sname AND [scontact] = @original_scontact AND [semail] = @original_semail AND [saddress] = @original_saddress AND [sdetails] = @original_sdetails AND [spassword] = @original_spassword" InsertCommand="INSERT INTO [supptbl] ([sid], [sname], [scontact], [semail], [saddress], [sdetails], [spassword]) VALUES (@sid, @sname, @scontact, @semail, @saddress, @sdetails, @spassword)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [supptbl]" UpdateCommand="UPDATE [supptbl] SET [sname] = @sname, [scontact] = @scontact, [semail] = @semail, [saddress] = @saddress, [sdetails] = @sdetails, [spassword] = @spassword WHERE [sid] = @original_sid AND [sname] = @original_sname AND [scontact] = @original_scontact AND [semail] = @original_semail AND [saddress] = @original_saddress AND [sdetails] = @original_sdetails AND [spassword] = @original_spassword">
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
               <br />
               <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Width="762px">
           <h3 class="text-center" data-aos="zoom-in">Add supplier</h3>
                <br />
               <asp:Label ID="prntmsg" runat="server" ForeColor="Black"></asp:Label>
                   
               <br />
               <asp:TextBox ID="sname" runat="server" class="form-control" placeholder="name" Width="234px" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"
                       ControlToValidate="sname"></asp:RequiredFieldValidator>
                   <br />
               <asp:TextBox ID="scontact" runat="server" class="form-control" placeholder="contact" Width="234px"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid"
                       ControlToValidate="scontact" ValidationExpression="^[0-9]\d{9}$"></asp:RegularExpressionValidator>
               <br />
               <asp:TextBox ID="semail" runat="server" class="form-control" placeholder="email" Width="234px" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="invalid"
                       ControlToValidate="semail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
                   <br />
               <asp:TextBox ID="saddress" runat="server" class="form-control" placeholder="address" Width="234px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required"
                       ControlToValidate="saddress"></asp:RequiredFieldValidator>
                   <br />
               <asp:TextBox ID="sdetails" runat="server" class="form-control" placeholder="supplier details" Width="234px" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required"
                       ControlToValidate="sdetails"></asp:RequiredFieldValidator>
                   <br />
               <asp:TextBox ID="spassword" runat="server" class="form-control" placeholder="password" Width="234px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="invalid"
                       ControlToValidate="spassword" ValidationExpression="^[a-zA-Z0-9]{8}$"></asp:RegularExpressionValidator>
                   <br />
               <asp:Button ID="submitbtn" runat="server" Text="Submit" class="form-control" Width="100px" BackColor="#0066FF" ForeColor="Black" OnClick="submitbtn_Click" />
           <br />
           
           
       </asp:Panel>
           </asp:Panel>
           <%--end add /manage supplier--%>
           <%--add / manage bikes--%>
           <asp:Panel runat="server" ID="paneladdbike" Visible="false">
               <br />
               <h3 class="text-center" data-aos="zoom-in">bikes list</h3>
               <br />
               <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bid" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="740px">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="bid" HeaderText="id" ReadOnly="True" SortExpression="bid" />
                       <asp:BoundField DataField="bname" HeaderText="name" SortExpression="bname" />
                       <asp:BoundField DataField="bprice" HeaderText="price" SortExpression="bprice" />
                       <asp:BoundField DataField="bquantity" HeaderText="quantity" SortExpression="bquantity" />
                       <asp:BoundField DataField="bimage" HeaderText="image" SortExpression="bimage" />
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [biketbl] WHERE [bid] = @original_bid AND [bname] = @original_bname AND [bprice] = @original_bprice AND [bquantity] = @original_bquantity AND [bimage] = @original_bimage" InsertCommand="INSERT INTO [biketbl] ([bid], [bname], [bprice], [bquantity], [bimage]) VALUES (@bid, @bname, @bprice, @bquantity, @bimage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [biketbl]" UpdateCommand="UPDATE [biketbl] SET [bname] = @bname, [bprice] = @bprice, [bquantity] = @bquantity, [bimage] = @bimage WHERE [bid] = @original_bid AND [bname] = @original_bname AND [bprice] = @original_bprice AND [bquantity] = @original_bquantity AND [bimage] = @original_bimage">
                   <DeleteParameters>
                       <asp:Parameter Name="original_bid" Type="String" />
                       <asp:Parameter Name="original_bname" Type="String" />
                       <asp:Parameter Name="original_bprice" Type="String" />
                       <asp:Parameter Name="original_bquantity" Type="Int32" />
                       <asp:Parameter Name="original_bimage" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="bid" Type="String" />
                       <asp:Parameter Name="bname" Type="String" />
                       <asp:Parameter Name="bprice" Type="String" />
                       <asp:Parameter Name="bquantity" Type="Int32" />
                       <asp:Parameter Name="bimage" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="bname" Type="String" />
                       <asp:Parameter Name="bprice" Type="String" />
                       <asp:Parameter Name="bquantity" Type="Int32" />
                       <asp:Parameter Name="bimage" Type="String" />
                       <asp:Parameter Name="original_bid" Type="String" />
                       <asp:Parameter Name="original_bname" Type="String" />
                       <asp:Parameter Name="original_bprice" Type="String" />
                       <asp:Parameter Name="original_bquantity" Type="Int32" />
                       <asp:Parameter Name="original_bimage" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <br />
               <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center" Width="762px">
                   <h3 class="text-center" data-aos="zoom-in">Add Bikes</h3>
                   <br />
                   <asp:Label ID="prntmsgbike" runat="server" ForeColor="Black"></asp:Label>
                   <br />
                   <asp:TextBox ID="bname" runat="server" class="form-control" placeholder="name" Width="234px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"
                       ControlToValidate="bname"></asp:RequiredFieldValidator>
                       <br />
                   <asp:TextBox ID="bprice" runat="server" class="form-control" placeholder="price" Width="234px"></asp:TextBox>
                  <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="invalid" ControlToValidate="bprice" 
                       MaximumValue="1000000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <br />
                   <asp:TextBox ID="bquantity" runat="server" class="form-control" placeholder="quantity" Width="234px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="invalid"
                       ControlToValidate="bquantity" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
                   <br />
                   <asp:FileUpload ID="uploadbike" runat="server" class="form-control" Width="234px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required"
                       ControlToValidate="uploadbike"></asp:RequiredFieldValidator>
                   <br />
                   <asp:Button ID="submitbikebtn" runat="server" Text="Submit" class="form-control" Width="100px" BackColor="#0066FF" ForeColor="Black" OnClick="submitbikebtn_Click" />
                   <br />


               </asp:Panel>
           </asp:Panel>
           <%--end add / manage bikes--%>
           <%--add / manage parts--%>
           <asp:Panel runat="server" ID="paneladdparts" Visible="false" > 
               <br />
              
                
               <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bpid" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="767px">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="bpid" HeaderText="id" ReadOnly="True" SortExpression="bpid" />
                       <asp:BoundField DataField="bpname" HeaderText="name" SortExpression="bpname" />
                       <asp:BoundField DataField="bpprice" HeaderText="price" SortExpression="bpprice" />
                       <asp:BoundField DataField="bpquantity" HeaderText="quantity" SortExpression="bpquantity" />
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
               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [bikeparttbl] WHERE [bpid] = @original_bpid AND [bpname] = @original_bpname AND [bpprice] = @original_bpprice AND [bpquantity] = @original_bpquantity" InsertCommand="INSERT INTO [bikeparttbl] ([bpid], [bpname], [bpprice], [bpquantity]) VALUES (@bpid, @bpname, @bpprice, @bpquantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [bikeparttbl]" UpdateCommand="UPDATE [bikeparttbl] SET [bpname] = @bpname, [bpprice] = @bpprice, [bpquantity] = @bpquantity WHERE [bpid] = @original_bpid AND [bpname] = @original_bpname AND [bpprice] = @original_bpprice AND [bpquantity] = @original_bpquantity">
                   <DeleteParameters>
                       <asp:Parameter Name="original_bpid" Type="String" />
                       <asp:Parameter Name="original_bpname" Type="String" />
                       <asp:Parameter Name="original_bpprice" Type="String" />
                       <asp:Parameter Name="original_bpquantity" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="bpid" Type="String" />
                       <asp:Parameter Name="bpname" Type="String" />
                       <asp:Parameter Name="bpprice" Type="String" />
                       <asp:Parameter Name="bpquantity" Type="Int32" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="bpname" Type="String" />
                       <asp:Parameter Name="bpprice" Type="String" />
                       <asp:Parameter Name="bpquantity" Type="Int32" />
                       <asp:Parameter Name="original_bpid" Type="String" />
                       <asp:Parameter Name="original_bpname" Type="String" />
                       <asp:Parameter Name="original_bpprice" Type="String" />
                       <asp:Parameter Name="original_bpquantity" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <br />
               <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center" Width="762px">
                   <h3 class="text-center" data-aos="zoom-in">Add Bike parts</h3>
                   <br />
                   <asp:Label ID="prntmsgbpart" runat="server" ForeColor="Black"></asp:Label>
                   <br />
                   <asp:TextBox ID="bpname" runat="server" class="form-control" placeholder="Name (Details,Descrption)" Width="234px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required"
                       ControlToValidate="bpname"></asp:RequiredFieldValidator>
                   <br />
                   <asp:TextBox ID="bpprice" runat="server" class="form-control" placeholder="price" Width="234px"></asp:TextBox>
                     <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="invalid" ControlToValidate="bpprice" 
                       MaximumValue="1000000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                   <br />
                   <asp:TextBox ID="bpquantity" runat="server" class="form-control" placeholder="quantity" Width="234px"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="invalid"
                       ControlToValidate="bpquantity" ValidationExpression="^[0-9]$"></asp:RegularExpressionValidator>
                   <br />
                 
                   <asp:Button ID="Button1" runat="server" Text="Submit" class="form-control" Width="100px" BackColor="#0066FF" ForeColor="Black" OnClick="Button1_Click" />
                   <br />


               </asp:Panel>
           </asp:Panel>
           <%--end add / manage parts--%>
           <%--manage customer--%>
           <asp:Panel runat="server" ID="panelmcustomer" Visible="false">
               <br />
               <h3 class="text-center" data-aos="zoom-in">Manage Customer</h3>
               <br />
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="742px" CellPadding="4" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" />
                       <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" SortExpression="uid" />
                       <asp:BoundField DataField="uname" HeaderText="name" SortExpression="uname" />
                       <asp:BoundField DataField="ucontact" HeaderText="contact" SortExpression="ucontact" />
                       <asp:BoundField DataField="uemail" HeaderText="email" SortExpression="uemail" />
                       <asp:BoundField DataField="uaddress" HeaderText="address" SortExpression="uaddress" />
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
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cstr %>" DeleteCommand="DELETE FROM [custtbl] WHERE [uid] = @original_uid AND [uname] = @original_uname AND [ucontact] = @original_ucontact AND [uemail] = @original_uemail AND [uaddress] = @original_uaddress" InsertCommand="INSERT INTO [custtbl] ([uid], [uname], [ucontact], [uemail], [uaddress]) VALUES (@uid, @uname, @ucontact, @uemail, @uaddress)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [uid], [uname], [ucontact], [uemail], [uaddress] FROM [custtbl]" UpdateCommand="UPDATE [custtbl] SET [uname] = @uname, [ucontact] = @ucontact, [uemail] = @uemail, [uaddress] = @uaddress WHERE [uid] = @original_uid AND [uname] = @original_uname AND [ucontact] = @original_ucontact AND [uemail] = @original_uemail AND [uaddress] = @original_uaddress">
                   <DeleteParameters>
                       <asp:Parameter Name="original_uid" Type="String" />
                       <asp:Parameter Name="original_uname" Type="String" />
                       <asp:Parameter Name="original_ucontact" Type="String" />
                       <asp:Parameter Name="original_uemail" Type="String" />
                       <asp:Parameter Name="original_uaddress" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="uid" Type="String" />
                       <asp:Parameter Name="uname" Type="String" />
                       <asp:Parameter Name="ucontact" Type="String" />
                       <asp:Parameter Name="uemail" Type="String" />
                       <asp:Parameter Name="uaddress" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="uname" Type="String" />
                       <asp:Parameter Name="ucontact" Type="String" />
                       <asp:Parameter Name="uemail" Type="String" />
                       <asp:Parameter Name="uaddress" Type="String" />
                       <asp:Parameter Name="original_uid" Type="String" />
                       <asp:Parameter Name="original_uname" Type="String" />
                       <asp:Parameter Name="original_ucontact" Type="String" />
                       <asp:Parameter Name="original_uemail" Type="String" />
                       <asp:Parameter Name="original_uaddress" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
           </asp:Panel>
      <%-- end manage customer--%>
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