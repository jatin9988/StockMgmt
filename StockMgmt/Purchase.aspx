<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="StockMgmt.Purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <style>
        .side {
            padding-left:30px;

        }

    </style>
	<div class="main-bg">
		<!-- title -->
		<h1>Purchase Area</h1>
        <h2 id="data" runat="server"></h2>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<div class="bg-content-w3pvt">
				<div class="top-content-style">
					<img src="images/user.jpg" alt="" />
				</div>
				<form>
					<p class="legend">Purchase  Here<span class="fa fa-hand-o-down"></span></p>
					<div class="input side">
                        <asp:TextBox ID="CompanyName" placeholder="Company Name" name="Company"  runat="server" required></asp:TextBox>

						
						
					</div>
					<div class="input  side">
                        <asp:TextBox ID="Product" placeholder="Product" name="Product"  runat="server" required></asp:TextBox>
						
					</div>

                    <div class="input  side">
                        <asp:TextBox ID="Qty" placeholder="Qty" name="Qty"  runat="server" required></asp:TextBox>
						
					</div>

                    <div class="input  side">
                        <asp:TextBox ID="Price" placeholder="Price" name="Price"  runat="server" required></asp:TextBox>
						
					</div>

                    <div class="input  side">
                        <asp:TextBox ID="Sdate" placeholder="Date (mm/dd/yyyy)" name="Sdate"  runat="server" required></asp:TextBox>
						
					</div>





                    <asp:Button ID="login" runat="server" Text="Purchase" class="btn submit" Name="btnPurchase" Height="55px" OnClick="login_Click"/>

					
						
					
				</form>
				
			</div>
		</div>
	


    </div>
</asp:Content>
