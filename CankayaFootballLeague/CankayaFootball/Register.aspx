<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>

    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="login">

            <h1>Register</h1>

            <asp:TextBox ID="txtName" runat="server" placeholder="Name"></asp:TextBox>
            <asp:TextBox ID="txtSurname" runat="server" placeholder="Surname"></asp:TextBox>
            <asp:TextBox ID="txtUserName" runat="server" placeholder="User Name"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:DropDownList ID="ddlUserType" runat="server"  Width="100%" Height="35px" Font-Size="13px" CssClass="border-radius: 4px;" BackColor="#fff"></asp:DropDownList>
            
            <br />
            
            <br />
            
            <asp:DropDownList ID="ddlSupportedTeam" Width="100%" Height="35px" Font-Size="13px" CssClass="border-radius: 4px;" BackColor="#fff" runat="server"></asp:DropDownList>

            <br />

            <br />

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary btn-block btn-large" OnClick="btnRegister_Click" ValidationGroup="Register" />
          

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter email" Font-Bold="True" ForeColor="Red" ValidationGroup="Register" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" Font-Bold="True" ForeColor="Red" ValidationGroup="Register" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

            <br />

            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>

        </div>

    </form>
</body>
</html>
