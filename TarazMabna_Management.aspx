<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TarazMabna_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.TarazMabna_Management" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="fu1" runat="server" />
            <br />
            <asp:Button ID="btnLoad" runat="server" Text="Load And Save" 
                onclick="btnLoad_Click" />
        </div>
    </form>
</body>
</html>
