<%@ Page Title="" Language="C#" MasterPageFile="~/SupporterMasterPage.master" AutoEventWireup="true" CodeFile="SupporterFixture.aspx.cs" Inherits="SupporterFixture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center><asp:Label ID="lblTitle" runat="server" Text="FIXTURE" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label></center>
    <div class="col-md-12">
        <br />
        <div class="container">
            <div class="row">

                <center><asp:Label ID="lblWeek1" runat="server" Text="WEEK 1" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>

                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek2" runat="server" Text="WEEK 2" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek2" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek3" runat="server" Text="WEEK 3" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek3" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek4" runat="server" Text="WEEK 4" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek4" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek5" runat="server" Text="WEEK 5" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek5" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label19" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek6" runat="server" Text="WEEK 6" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek6" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label24" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek7" runat="server" Text="WEEK 7" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek7" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label29" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek8" runat="server" Text="WEEK 8" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek8" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label34" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                  <center><asp:Label ID="lblWeek9" runat="server" Text="WEEK 9" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>

                  <center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek9" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label39" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                      <asp:Label ID="lblWeek10" runat="server" Text="WEEK 10" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:Label></center>
                <asp:gridview runat="server" AutoGenerateColumns="False" ID="grvWeek10" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1" runat="server" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam1Score" runat="server"  Text='<%# Bind("HomeGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label44" runat="server" Text="-"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2Score" runat="server" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Small" ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" Width="15%" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblTeam2" runat="server" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:gridview>

                <br />
                <br />
            </div>
        </div>
    </div>

</asp:Content>

