<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminArea.aspx.cs" Inherits="StockMgmt.AdminArea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <br />
    <br />
    <style>
        .side {
            padding-left:30px;
        }
        .ok ul li {
            border:1px solid blue;
            height:50px;
            font-size:30px;

        }

    </style>
	<div class="main-bg">
		<!-- title -->
		<h1>Sale Area</h1>
        <h2 id="data" runat="server"></h2>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<div class="bg-content-w3pvt ok">
				<div class="top-content-style">
					<img src="images/user.jpg" alt="" />
				</div>
				<ul>
                    <li><a href="Purchase.aspx">Purchase</a></li>
                    <li><a href="Sale.aspx">Sale</a></li>
                     <li><a href="PurchaseReport.aspx">Purchase Report</a></li>
                        <li><a href="SaleReport.aspx">Sale Report</a></li>
                    
				</ul>
			</div>
		</div>
<a href="AdminArea.aspx" class="btn btn-warning">Back to Dashboard</a>	

    </div>
</asp:Content>
