<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Rating.aspx.cs" Inherits="Rating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <center><asp:Label ID="lblTitle" runat="server" Text="ÇANKAYA FOOTBALL LEAGUE RATING" BackColor="#3366CC" BorderStyle="Ridge" BorderWidth="1px" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Width="100%"></asp:Label>
                <br />
            </center>
            <asp:GridView ID="grvRating" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Takım">
                        <ItemTemplate>
                            <asp:Label ID="lblNumber" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="imgTeamPicture" runat="server" Width="40px" ImageUrl='<%# "~/image/"+Eval("TeamImage") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblTeamName" runat="server" Text='<%# Bind("TeamName") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="500px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="500px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OM">
                        <ItemTemplate>
                            <asp:Label ID="lblOM" runat="server" Text='<%# Bind("NumberMatchesPlayed") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" Width="30px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="G">
                        <ItemTemplate>
                            <asp:Label ID="lblG" runat="server" Text='<%# Bind("NumberWin") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="B">
                        <ItemTemplate>
                            <asp:Label ID="lblB" runat="server" Text='<%# Bind("NumberEquality") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="M">
                        <ItemTemplate>
                            <asp:Label ID="lblM" runat="server" Text='<%# Bind("NumberLose") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AG">
                        <ItemTemplate>
                            <asp:Label ID="lblAG" runat="server" Text='<%# Bind("NumberThrowGoal") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="YG">
                        <ItemTemplate>
                            <asp:Label ID="lblYG" runat="server" Text='<%# Bind("NumberGrabbedGoal") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="A">
                        <ItemTemplate>
                            <asp:Label ID="lblA" runat="server" Text='<%# Bind("GoalAverage") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="P">
                        <ItemTemplate>
                            <asp:Label ID="lblP" runat="server" Text='<%# Bind("Point") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>

