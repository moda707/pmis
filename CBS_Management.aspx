<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CBS_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.CBS_Management" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table width="400px" border="0" cellpadding="1" cellspacing="1">
            <tr>
                <td>
                    <span>CBS</span>
                </td>
                <td>
                    <span>Financial Cost Codes</span>
                </td>
            </tr>
            <tr>
                <td dir="rtl">                    
                    <asp:ListBox ID="lstItems" Width="300px" Height="400px" runat="server"></asp:ListBox>
                </td>
                <td>
                    <asp:ListBox ID="lstFin" Width="300px" Height="400px" runat="server"></asp:ListBox>
                </td>
            </tr>            
            <tr>
                <td colspan="2"><asp:Button ID="btnSave" runat="server" Text="Save" 
                        onclick="btnSave_Click" Width="93px" />
                        <asp:Button ID="btnload" runat="server" Text="load" 
                        OnClick="btnload_Click" />
                        </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:left;">
                    <asp:TreeView ID="TV1" runat="server" ImageSet="Msdn" NodeIndent="10" 
                        ShowLines="True">
                        <HoverNodeStyle BackColor="#CCCCCC" BorderColor="#888888" BorderStyle="Solid" 
                            Font-Underline="True" />
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                            HorizontalPadding="5px" NodeSpacing="1px" VerticalPadding="2px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle BackColor="White" BorderColor="#888888" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Underline="False" HorizontalPadding="3px" 
                            VerticalPadding="1px" />
                    </asp:TreeView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
