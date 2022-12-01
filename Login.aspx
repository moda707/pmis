<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_Management_Information_System1._0.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login...</title> 
    <link href="css/styles.css" rel="stylesheet" type="text/css" />    

</head>
<body class="signinform">
    <div class="panel panel-signin panel-transparent">
      <form role="form" runat="server">
          <div class="panel-heading">
              <div class="panel-signin-logo"></div>              
          </div>
          <div class="panel-body">
              <asp:TextBox ID="txtUserName" class="form-control" runat="server"></asp:TextBox>
              <asp:TextBox ID="txtPass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
              <label class="checkbox">
              <input id="chkrememberme" runat="server" type="checkbox" value="remember-me"/>&nbsp&nbsp Remember me</label>
              <asp:Button ID="Button1" class="btn btn-primary-outline center" runat="server" Text="Login" onclick="btnLogin_Click" />   
              <br />
              <div style="text-align:center"  >
                <asp:Label ID="lblErr" CssClass="alert alert-danger" runat="server" Visible="false" ForeColor="Red" Text=""></asp:Label>
            </div>     
          </div> 
      </form>
    </div>    
</body>
</html>
