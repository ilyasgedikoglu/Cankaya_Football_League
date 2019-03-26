<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddReferee.aspx.cs" Inherits="AddReferee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center><asp:Label ID="lblTitle" runat="server" Text="ADD REFEREE" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label></center>
    <div class="container">
        <div class="row">
            <ul class="list-group">
                 <li class="list-group-item">
                    <asp:Label ID="lblLicenceNumber" runat="server" Width="50%" Text="Licence Number"></asp:Label>
                    <asp:TextBox ID="txtLicenceNumber" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblName" runat="server" Width="50%" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblSurname" runat="server" Width="50%" Text="Surname"></asp:Label>
                    <asp:TextBox ID="txtSurname" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblCity" runat="server" Width="50%" Text="City"></asp:Label>
                    <asp:TextBox ID="txtCity" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblBirthDate" runat="server" Width="50%" Text="Birthdate"></asp:Label>
                    <asp:TextBox ID="txtBirthdate" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblEmail" runat="server" Width="50%" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox>
                </li>
                 <li class="list-group-item">
                     <asp:Label ID="lblRefereeType" runat="server" Width="50%" Text="Referee Type"></asp:Label>
                     <asp:DropDownList ID="ddlRefereeType" runat="server"  Width="100%" ></asp:DropDownList>
                </li>
                 <li class="list-group-item">
                    <asp:Label ID="lblIsActive" runat="server" Width="50%" Text="Is Active"></asp:Label>
                    <asp:CheckBox ID="cbIsActive" runat="server" Width="100%" />
                </li>
                 <li class="list-group-item">
                    <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick="btnSubmit_Click" />
                </li>
                
            </ul>
        </div>
    </div>
</asp:Content>

