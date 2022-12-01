<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PeymanDarJaryan_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.PeymanDarJaryan_Management" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:TextBox ID="txtYear" runat="server"></asp:TextBox><br />
        <asp:Button ID="btntt" runat="server" Text="Load And Save" 
            onclick="btntt_Click" />
    </div>
    <hr />
    <div align="center">
        
        <div id="con" runat="server" style="width:350px; height:400px; overflow:scroll; font-family:Tahoma; font-size:9pt;">
            <asp:Table ID="tb" runat="server">
            </asp:Table>
        </div><br />
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
    </div>
    <hr />
    <div align="center">
        <table border="0">
            <tr>
                <td>
                    <asp:DropDownList ID="dpRepItems" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnFilter" runat="server" Text="Filter" 
                        onclick="btnFilter_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ListBox ID="lstT" runat="server"></asp:ListBox>
                </td>
            </tr>
        </table>        
        <br />
        
    </div>
    </form>
</body>
</html>
