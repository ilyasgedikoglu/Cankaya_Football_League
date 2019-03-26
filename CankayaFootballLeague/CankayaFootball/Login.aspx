<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="login">
         
           <h1>Login</h1>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email" ></asp:TextBox>
          
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter email" ValidationGroup="Login"></asp:RequiredFieldValidator>
        
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter password" ValidationGroup="Login"></asp:RequiredFieldValidator>
        
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block btn-large" ValidationGroup="Login" OnClick="btnLogin_Click" />
           <br />

           <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>

           <br />

           <asp:HyperLink ID="hypRegister" NavigateUrl="~/Register.aspx" runat="server" ForeColor="White">Register Now!</asp:HyperLink>

        </div>
    </form>
</body>
</html>
