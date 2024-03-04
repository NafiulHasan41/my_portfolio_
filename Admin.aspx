<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Portfolio.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="adminAsset/admin.css" rel="stylesheet" />
 
    
</head>
<body>
    <form id="form1" runat="server">
     
          <div class="login-container">
            <h2>Admin Login</h2>
             <h5>Nafiul Hasan's portfolio</h5>
            <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" EnableViewState="false"></asp:Label>
            <div class="input-group">
                <asp:Label ID="lblUsername" CssClass="labelasp" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
           
            </div>
            <div class="input-group">
                <asp:Label ID="lblPassword" CssClass="labelasp"  runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            
            </div>
            <div class="input-group">
                <asp:Button ID="btnLogin" CssClass="button1" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </div>
        </div>

        
    </form>
   
</body>
</html>

