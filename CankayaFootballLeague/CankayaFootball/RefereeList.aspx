<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RefereeList.aspx.cs" Inherits="RefereeList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <asp:GridView ID="grvRefereeList" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowCancelingEdit="grvRefereeList_RowCancelingEdit" OnRowDeleting="grvRefereeList_RowDeleting" OnRowEditing="grvRefereeList_RowEditing" OnRowUpdating="grvRefereeList_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="RefereeId" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lblRefereeId" Text='<%# Bind("RefereeId") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Licence Number">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLicenceNumber"  Text='<%# Bind("LicenceNumber") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblLicenceNumber"  Text='<%# Bind("LicenceNumber") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName"  Text='<%# Bind("Name") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblName"  Text='<%# Bind("Name") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName"  Text='<%# Bind("LastName") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblLastName"  Text='<%# Bind("LastName") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCity"  Text='<%# Bind("City") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblCity"  Text='<%# Bind("City") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" Font-Italic="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BirthDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtBirthDate"  Text='<%# Bind("BirthDate") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblBirthDate"  Text='<%# Bind("BirthDate") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail"  Text='<%# Bind("Email") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblEmail"  Text='<%# Bind("Email") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Referee Type">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlRefereeTypeId" runat="server">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblRefereeTypeId"  Text='<%# FindRefereeName(Eval("RefereeTypeId")) %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Top" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/image/cancel.png" DeleteImageUrl="~/image/delete.png" EditImageUrl="~/image/edit.png" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>

