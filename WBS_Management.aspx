<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="~/WBS_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.WBS_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ساختار شکست کار</title>
    <link type="text/css" rel="stylesheet" href="css/nestable.css" />
    <script src="js/ui-nestable-list.js"></script>
    <script src="js/jquery.nestable.js"></script>
    <script src="js/MJScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="wrapper" style="padding-top:50px;">
        <!--BEGIN SIDEBAR MENU-->
        <nav id="sidebar" role="navigation" data-step="2" data-intro="MURL2" data-position="left" class="navbar-default navbar-static-side">
        <div class="sidebar-collapse menu-scroll">
            <ul id="side-menu" class="nav" style="font-size:14pt;">                    
                <div class="clearfix"></div>
                <% if (SI.DashBoard != Project_Management_Information_System1._0.Access_Type.None)
                   { %>
                <li><a href="Dashboard.aspx">
                    <i class="fa fa-tachometer fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i>
                    <span class="menu-title">داشبورد</span></a>
                </li>
                <%}
                    if(SI.Statement_M != Project_Management_Information_System1._0.Access_Type.None)
                    {
                     %>
                <li><a href="Statement_M.aspx"><i class="fa fa-desktop fa-fw">
                    <div class="icon-bg bg-pink"></div>
                </i><span class="menu-title">صورت وضعیت ها</span></a>                    
                </li>
                <%}
                    if(SI.Statement_J != Project_Management_Information_System1._0.Access_Type.None)
                    { %>   
                <li><a href="Statement_J.aspx"><i class="fa fa-envelope-square fa-fw">
                    <div class="icon-bg bg-green"></div>
                </i><span class="menu-title">تعدیلات</span></a>                       
                </li>
                <%}
                    if(SI.TarazJari != Project_Management_Information_System1._0.Access_Type.None)
                    { %>   
                <li><a href="TarazJari_Management.aspx"><i class="fa fa-edit fa-fw">
                    <div class="icon-bg bg-violet"></div>
                </i><span class="menu-title">تراز جاری</span></a>                      
                </li>
                <%}
                    if(SI.Finance != Project_Management_Information_System1._0.Access_Type.None)
                    { %>   
                <li><a href="Finance_Management.aspx"><i class="fa fa-money fa-fw">
                    <div class="icon-bg bg-blue"></div>
                </i><span class="menu-title">مالی</span></a>                          
                </li>
                <%}
                    if(SI.Project_Progress != Project_Management_Information_System1._0.Access_Type.None)
                    { %>   
                <li><a href="Project_Progress.aspx"><i class="fa fa-signal fa-fw">
                    <div class="icon-bg bg-red"></div>
                </i><span class="menu-title">پیشرفت پروژه</span></a>                      
                </li>
                <%}
                    if(SI.Human_Resource != Project_Management_Information_System1._0.Access_Type.None)
                    { %>   
                <li><a href="Human_Resource.aspx"><i class="fa fa-sitemap fa-fw">
                    <div class="icon-bg bg-yellow"></div>
                </i><span class="menu-title">نیروی انسانی</span></a>                       
                </li>
                <%}
                    if(SI.Equipment != Project_Management_Information_System1._0.Access_Type.None)
                    { %>   
                <li><a href="Equipment_Management.aspx"><i class="fa fa-truck fa-fw">
                    <div class="icon-bg bg-grey"></div>
                </i><span class="menu-title">ماشین آلات</span></a>                      
                </li>
                <%}
                    if(SI.Users != Project_Management_Information_System1._0.Access_Type.None)
                    { %>   
                <li><a href="User_Management.aspx"><i class="fa fa-users fa-fw">
                    <div class="icon-bg bg-dark"></div>
                </i><span class="menu-title">کاربران</span></a>                      
                </li>
                <%}
                    if(SI.Setting != Project_Management_Information_System1._0.Access_Type.None)
                    { %>
                <li><a href="#"><i class="fa fa-gears fa-fw">
                    <div class="icon-bg bg-primary"></div>
                </i><span class="menu-title">تنظیمات</span></a>                      
                </li>
                <% }
                    //if(SI.Setting != Project_Management_Information_System1._0.Access_Type.None)
                    { %>
                <li class="active"><a href="VirtualTour.aspx"><i class="fa fa-camera fa-fw">
                    <div class="icon-bg bg-primary"></div>
                </i><span class="menu-title">بازدید مجازی</span></a>                      
                </li>
                <% } %>
            </ul>
        </div>
        </nav>
        <!--END SIDEBAR MENU-->
        <!--BEGIN PAGE WRAPPER-->
        <div id="page-wrapper">
            <!--BEGIN TITLE & BREADCRUMB PAGE-->
            <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                <div class="page-header pull-left">
                    <div class="page-title">ساختار شکست کار (WBS)</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a href="DashBoard.aspx">خانه</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a href="Project_Progress.aspx">ساختار شکست کار</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="active">ساختار شکست کار</li>
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <!--END TITLE & BREADCRUMB PAGE-->
            <!--BEGIN CONTENT-->
            <div class="page-content" style="font-family:B Nazanin; font-size:12pt;">
                <div id="tab-general">
                    <div class="row">
                        <div class="col-lg-7">
                            <div id="nestable" class="dd">
                                
                            </div>
                        </div>
                        <div class="col-lg-4 col-lg-offset-1">
                            <div style="width:100%" class="well well-lg">
                                <span>WBS_ID: <asp:TextBox ID="txtWBS_ID" runat="server" Text="" CssClass="form-control"></asp:TextBox></span><br />
                                <span>Parent_ID: <asp:TextBox ID="txtParent_ID" runat="server" Text="" CssClass="form-control"></asp:TextBox></span><br />
                                <span>WBS_Level: <asp:TextBox ID="txtWBS_Level" runat="server" Text="" CssClass="form-control"></asp:TextBox></span><br />
                                <span>Description: <asp:TextBox ID="txtDescription" runat="server" Text="" CssClass="form-control"></asp:TextBox></span><br />
                                <asp:Button ID="btnAdd" runat="server" Text="Add" onclick="btnAdd_Click" />
                            </div>
                            <div>
                                <asp:Label ID="txtErr" runat="server"></asp:Label>
                            </div>
                        </div><br /><hr /><br />
                        
                        
                    </div>
                </div>
            </div>
        </div>
</div>
</asp:Content>
