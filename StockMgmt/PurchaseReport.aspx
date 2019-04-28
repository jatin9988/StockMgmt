<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseReport.aspx.cs" Inherits="StockMgmt.PurchaseReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <br />
    <br />
    <style>
        .side {
            padding-left:10px;
        }
       
        table, td,th {
            border:1px solid grey;
            padding:15px;
            margin-right:10px;
            text-align:center;
        }


   

    </style>
	<div class="main-bg">
		<!-- title -->
		<h1>Purchase Area</h1>
        <h2 id="data" runat="server"></h2>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3" >
			
				
				<form>
					<p class="legend">Purchase  details<span class="fa fa-hand-o-down"></span></p>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" Class="btn btn-primary" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" Class="btn btn-primary" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="sdateLabel" runat="server" Text='<%# Eval("sdate") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="companynameTextBox" runat="server" Text='<%# Bind("companyname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="sdateTextBox" runat="server" Text='<%# Bind("sdate") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" Class="btn btn-primary" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" Class="btn btn-primary"/>
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="companynameTextBox" runat="server" Text='<%# Bind("companyname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="sdateTextBox" runat="server" Text='<%# Bind("sdate") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" Class="btn btn-primary"/>
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" Class="btn btn-primary"/>
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="sdateLabel" runat="server" Text='<%# Eval("sdate") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th runat="server"></th>
                                                <th runat="server">id</th>
                                                <th runat="server">companyname</th>
                                                <th runat="server">productname</th>
                                                <th runat="server">qty</th>
                                                <th runat="server">price</th>
                                                <th runat="server">total</th>
                                                <th runat="server">sdate</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button"  ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" Class="btn btn-primary" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" Class="btn btn-primary" />
                                </td>
                                <td>
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="sdateLabel" runat="server" Text='<%# Eval("sdate") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
				
			        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbStockConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [id] = @id" InsertCommand="INSERT INTO [product] ([companyname], [productname], [qty], [price], [total], [sdate]) VALUES (@companyname, @productname, @qty, @price, @total, @sdate)" SelectCommand="SELECT [id], [companyname], [productname], [qty], [price], [total], [sdate] FROM [product]" UpdateCommand="UPDATE [product] SET [companyname] = @companyname, [productname] = @productname, [qty] = @qty, [price] = @price, [total] = @total, [sdate] = @sdate WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="companyname" Type="String" />
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="qty" Type="Int32" />
                            <asp:Parameter Name="price" Type="Int32" />
                            <asp:Parameter Name="total" Type="Int32" />
                            <asp:Parameter Name="sdate" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="companyname" Type="String" />
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="qty" Type="Int32" />
                            <asp:Parameter Name="price" Type="Int32" />
                            <asp:Parameter Name="total" Type="Int32" />
                            <asp:Parameter Name="sdate" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
				
			</div>
		
	<a href="AdminArea.aspx" class="btn btn-warning">Back to Dashboard</a>	


    </div>
</asp:Content>
