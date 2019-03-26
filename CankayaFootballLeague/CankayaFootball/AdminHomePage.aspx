<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="clearfix"></div>

    <center><asp:Label ID="lblMesaage" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Width="50%" Font-Size="XX-Large" TabIndex="3"></asp:Label></center>

    <div class="container">
        <div class="row">
            <center><asp:Label ID="lblTitle" runat="server" Text="Approval of Membership " BackColor="#3366CC" BorderStyle="Ridge" BorderWidth="1px" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Width="100%"></asp:Label>
                <br />

            <asp:GridView ID="grvSupporterList" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server"  Text='<%# Bind("SupporterId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblNumber" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" Width="30%" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Surname">
                        <ItemTemplate>
                            <asp:Label ID="lblSurname" runat="server" Text='<%# Bind("SurName") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" Width="30%" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="isApproval">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbIsApproval" runat="server" />
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" Width="30%" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <br />
                <br />
                <asp:Button ID="btnIsApproval" runat="server" Text="Is Approval" OnClick="btnIsApproval_Click1" Width="100%"></asp:Button>
        </div>
    </div>

</asp:Content>

<%--  --%>