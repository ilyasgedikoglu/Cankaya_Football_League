<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddTeam.aspx.cs" Inherits="AddTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center><asp:Label ID="lblTitle" runat="server" Text="ADD TEAM" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label></center>
    <div class="container">
        <div class="row">
            <ul class="list-group">
                <li class="list-group-item">
                    <asp:Label ID="lblTeamName" runat="server" Width="50%" Text="Team Name"></asp:Label>
                    <asp:TextBox ID="txtTeamName" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblCity" runat="server" Width="50%" Text="City"></asp:Label>
                    <asp:TextBox ID="txtCity" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblMainColor" runat="server" Width="50%" Text="Main Color"></asp:Label>
                    <asp:TextBox ID="txtMainColor" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblSecondaryColor" runat="server" Width="50%" Text="Secondary Color"></asp:Label>
                    <asp:TextBox ID="txtSecondaryColor" Width="100%" runat="server"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblEstablishmentYear" runat="server" Width="50%" Text="EstablishmentYear"></asp:Label>
                    <asp:TextBox ID="txtEstablishmentYear" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblAccountBalance" runat="server" Width="50%" Text="Account Balance"></asp:Label>
                    <asp:TextBox ID="txtAccountBalance" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblPositionLeague" runat="server" Width="50%" Text="Position League"></asp:Label>
                    <asp:TextBox ID="txtPositionLeague" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblNumberWin" runat="server" Width="50%" Text="Number Win"></asp:Label>
                    <asp:TextBox ID="txtNumberWin" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblNumberLose" runat="server" Width="50%" Text="Number Lose"></asp:Label>
                    <asp:TextBox ID="txtNumberLose" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblNumberEquality" runat="server" Width="50%" Text="Number Equality"></asp:Label>
                    <asp:TextBox ID="txtNumberEquality" runat="server" Width="100%"></asp:TextBox>
                </li>
                 <li class="list-group-item">
                    <asp:Label ID="lblThrowGoal" runat="server" Width="50%" Text="Number Throw Goal"></asp:Label>
                    <asp:TextBox ID="txtThrowGoal" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblGrabbedGoal" runat="server" Width="50%" Text="Number Grabbed Goal"></asp:Label>
                    <asp:TextBox ID="txtGrabbedGoal" runat="server" Width="100%"></asp:TextBox>
                </li>
                 <li class="list-group-item">
                    <asp:Label ID="lblGoalAverage" runat="server" Width="50%" Text="Goal Average"></asp:Label>
                    <asp:TextBox ID="txtGoalAverage" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblPoint" runat="server" Width="50%" Text="Point"></asp:Label>
                    <asp:TextBox ID="txtPoint" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblNumberMatches" runat="server" Width="50%" Text="Number Matches Played"></asp:Label>
                    <asp:TextBox ID="txtNumberMatchesPlayed" runat="server" Width="100%"></asp:TextBox>
                </li>
                <li class="list-group-item">
                    <asp:Label ID="lblTeamImage" runat="server" Width="50%" Text="Team Image"></asp:Label>
                    <asp:FileUpload ID="fuTeamImage" runat="server" Width="100%" />
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

