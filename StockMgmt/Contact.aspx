<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="StockMgmt.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
    <br />
    <br />
    <br />
      <div class="jumbotron" style="border:1px solid red;background-image:url('images/bg2.jpg'); color:white;">
        <h1 style="color:white;">Stock Managment</h1>
        <p class="lead" style="color:antiquewhite;">Best Stock Trades </p>
        <p><a href="#" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div style="font-size:30px; color:white;">
    <h2><%: Title %>.</h2>
       <br />
    <address>
       House no. 589,James Street<br />
        Auckland, New Zealand<br />
        <abbr title="Phone">Ph:</abbr>
        +64 586 85 484 74
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">info@Stockmanagement</a><br />
      
    </address>
        <a href="AdminArea.aspx" class="btn btn-warning">Back to Dashboard</a>	
        </div>
</asp:Content>
