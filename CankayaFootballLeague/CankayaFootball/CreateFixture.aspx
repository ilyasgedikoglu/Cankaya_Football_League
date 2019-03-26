<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CreateFixture.aspx.cs" Inherits="CreateFixture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <center><asp:Label ID="lblTitle" runat="server" Text="FIXTURE CREATION" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label></center>
    <br />
    <br />
    <div class="col-md-12">
        <center><asp:Button ID="btnCreationFixture" runat="server" Text="Fixture Creation" BackColor="#99CCFF" BorderColor="#0066FF" BorderWidth="1px" Font-Bold="True" ForeColor="#000099" Height="50px" OnClick="btnCreationFixture_Click" Width="100%"></asp:Button></center>
        <br />
        <div class="container">
            <div class="row">

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek1" runat="server" Text="WEEK 1" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek1_RowEditing" OnRowUpdating="grvWeek1_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium"  Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server"  Font-Bold="False"  Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek2" runat="server" Text="WEEK 2" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek2_RowEditing" OnRowUpdating="grvWeek2_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />


                <ul class="list-group">
                    <center><asp:Label ID="lblWeek3" runat="server" Text="WEEK 3" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek3_RowEditing" OnRowUpdating="grvWeek3_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek4" runat="server" Text="WEEK 4" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek4_RowEditing" OnRowUpdating="grvWeek4_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek5" runat="server" Text="WEEK 5" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek5_RowEditing" OnRowUpdating="grvWeek5_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek6" runat="server" Text="WEEK 6" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek6_RowEditing" OnRowUpdating="grvWeek6_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek7" runat="server" Text="WEEK 7" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek7_RowEditing" OnRowUpdating="grvWeek7_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek8" runat="server" Text="WEEK 8" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek8_RowEditing" OnRowUpdating="grvWeek8_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek9" runat="server" Text="WEEK 9" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek9" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek9_RowEditing" OnRowUpdating="grvWeek9_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />

                <ul class="list-group">
                    <center><asp:Label ID="lblWeek10" runat="server" Text="WEEK 10" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" Visible="false"></asp:Label></center>

                    <asp:GridView ID="grvWeek10" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" Visible="False" OnRowEditing="grvWeek10_RowEditing" OnRowUpdating="grvWeek10_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Fixture Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblFixtureId" runat="server" Text='<%# Bind("FixtureId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("HomeTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam1ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam1Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("HomeGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="-"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeam2ScoreEdit" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2Score" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Red" Text='<%# Bind("AwayGoals") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblTeam2" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# FindHomeId(Eval("AwayTeamId")) %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" Width="30%" />
                            </asp:TemplateField>
                            <asp:CommandField EditImageUrl="~/image/edit.png" ShowCancelButton="False" ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/image/update.png">
                                <ItemStyle Width="15%" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </ul>

                <br />
                
                 <center><asp:Button ID="btnDelete" runat="server" Text="Delete Fixture" BackColor="Red" BorderColor="#CC3300" BorderWidth="1px" Font-Bold="True" ForeColor="#FFFFCC" Height="30px" Width="100%" OnClick="btnDelete_Click"></asp:Button></center>

                <br />
                <br />
            </div>
        </div>
    </div>

</asp:Content>

