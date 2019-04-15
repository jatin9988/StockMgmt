<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="StockMgmt.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login From</title>

    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />

    	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>

	
	<!-- //web-fonts -->


</head>
<body>

	<div class="main-bg">
		<!-- title -->
		<h1>Latest Login Form</h1>
        <h2 id="data" runat="server"></h2>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<div class="bg-content-w3pvt">
				<div class="top-content-style">
					<img src="images/user.jpg" alt="" />
				</div>
				<form runat="server">
					<p class="legend">Login Here<span class="fa fa-hand-o-down"></span></p>
					<div class="input">
                        <asp:TextBox ID="Username" placeholder="Email" name="email"  runat="server" required></asp:TextBox>

						
						<span class="fa fa-envelope"></span>
					</div>
					<div class="input">
                        <asp:TextBox ID="password" placeholder="Password" type="Password" name="password"  runat="server" required></asp:TextBox>
						<span class="fa fa-unlock"></span>
					</div>
                    <asp:Button ID="login" runat="server" Text="Login" class="btn submit" Name="btnLogin" Height="55px" OnClick="login_Click"/>

					
						
					
				</form>
				
			</div>
		</div>
		<!-- //content -->
		<!-- copyright -->
		<div class="copyright">
			<h2>&copy; 2019 Latest . All rights reserved | Design by
				<a href="#" target="_blank">NZ Business</a>
			</h2>
		</div>
		<!-- //copyright -->
	</div>



    


</body>
</html>
