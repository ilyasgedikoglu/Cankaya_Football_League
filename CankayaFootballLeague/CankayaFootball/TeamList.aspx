<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TeamList.aspx.cs" Inherits="TeamList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <asp:GridView ID="grvTeamList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" Width="100%" BorderStyle="None" OnRowCancelingEdit="grvTeamList_RowCancelingEdit" OnRowDeleting="grvTeamList_RowDeleting" OnRowEditing="grvTeamList_RowEditing" OnRowUpdating="grvTeamList_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Id" Visible="False">
                <ItemTemplate>
                    <asp:Label ID="lblTeamId" Text='<%# Bind("TeamId") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Team Image">
                <EditItemTemplate>
                    <asp:FileUpload ID="fuImage" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="imgTeamPicture" runat="server" Width="50px" ImageUrl='<%# "~/image/"+Eval("TeamImage") %>' />
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Team Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtTeamName" Width="40px" Text='<%# Bind("TeamName") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblTeamName" runat="server" Text='<%# Bind("TeamName") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCity"  Width="40px" Text='<%# Bind("City") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Main Color">
                <EditItemTemplate>
                    <asp:TextBox ID="txtMainColor"  Width="40px" Text='<%# Bind("MainColor") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblMainColor" runat="server" Text='<%# Bind("MainColor") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Secondary Color">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSecondaryColor"  Width="40px" Text='<%# Bind("SecondaryColor") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblSecondaryColor" runat="server" Text='<%# Bind("SecondaryColor") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Establishment Year">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEstablishmentYear"  Width="40px" Text='<%# Bind("EstablishmentYear") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblEstablishmentYear" runat="server" Text='<%# Bind("EstablishmentYear") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Account Balance">
                <EditItemTemplate>
                    <asp:TextBox ID="txtAccountBalance"  Width="40px" Text='<%# Bind("AccountBalance") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblAccountBalance" runat="server" Text='<%# Bind("AccountBalance") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Position League">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPositionLeague"  Width="40px" Text='<%# Bind("PositionLeague") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPositionLeague" runat="server" Text='<%# Bind("PositionLeague") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="G">
                <EditItemTemplate>
                    <asp:TextBox ID="txtG" Width="40px" Text='<%# Bind("NumberWin") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblG" runat="server" Text='<%# Bind("NumberWin") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="M">
                <EditItemTemplate>
                    <asp:TextBox ID="txtM"  Width="40px" Text='<%# Bind("NumberLose") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblM" runat="server" Text='<%# Bind("NumberLose") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="B">
                <EditItemTemplate>
                    <asp:TextBox ID="txtB"  Width="40px" Text='<%# Bind("NumberEquality") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblB" runat="server" Text='<%# Bind("NumberEquality") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OM">
                <EditItemTemplate>
                    <asp:TextBox ID="txtOM"  Width="40px" runat="server" Text='<%# Bind("NumberMatchesPlayed") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblOM" runat="server" Text='<%# Bind("NumberMatchesPlayed") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AG">
                <EditItemTemplate>
                    <asp:TextBox ID="txtAG"  Width="40px" Text='<%# Bind("NumberThrowGoal") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblAG" runat="server" Text='<%# Bind("NumberThrowGoal") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="YG">
                <EditItemTemplate>
                    <asp:TextBox ID="txtYG"  Width="40px" runat="server" Text='<%# Bind("NumberGrabbedGoal") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblYG" runat="server" Text='<%# Bind("NumberGrabbedGoal") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="A">
                <EditItemTemplate>
                    <asp:TextBox ID="txtA"  Width="40px" runat="server" Text='<%# Bind("GoalAverage") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblA" runat="server" Text='<%# Bind("GoalAverage") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Point">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPoint"  Width="40px" runat="server" Text='<%# Bind("Point") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPoint" runat="server" Text='<%# Bind("Point") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:TemplateField>
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/image/cancel.png" DeleteImageUrl="~/image/delete.png" EditImageUrl="~/image/edit.png" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" InsertImageUrl="~/image/update.png">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
        </div>
    </div>
    
</asp:Content>

