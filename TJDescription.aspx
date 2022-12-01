<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TJDescription.aspx.cs" Inherits="Project_Management_Information_System1._0.TJDescription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center; font-family:B Nazanin; font-size:13pt;">
        <span>شرح تراز جاری به تاریخ <% = TJDate %></span>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>کد معین</th>
                    <th>عنوان معین</th>
                    <th>مانده بدهکار</th>
                    <th>مانده بستانکار</th>
                </tr>
            </thead>
            <tbody>                
                <% = TJDescContent %>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
