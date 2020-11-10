<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="fr.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>fdata</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <table style="margin-top: 50px; margin-left: 150px">
                <tr>
                    <td><span>ID</span></td>
                    <td><asp:TextBox ID="ID" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><span>NAME</span></td>
                    <td><asp:TextBox ID="NAME" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><span>DEPT</span></td>
                    <td><asp:TextBox ID="DEPT" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><span>YEAR</span></td>
                    <td><asp:TextBox ID="YEAR" runat="server"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <asp:Button ID="cr" runat="server" Text="CREATE" />
                        <asp:Button ID="up" runat="server" Text="UPDATE" />
                        <asp:Button ID="dl" runat="server" Text="DELETE" />
                        <asp:Button ID="cl" runat="server" Text="CLEAR" />
                    </td>
                </tr>

            </table>

         





            <br />

         





            <br />

         





            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdataConnectionString %>" SelectCommand="SELECT * FROM [bca_a]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="323px" style="margin-left: 280px" Width="496px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="DEPT" HeaderText="DEPT" SortExpression="DEPT" />
                    <asp:BoundField DataField="YEAR" HeaderText="YEAR" SortExpression="YEAR" />
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
    </form>
</body>
</html>
