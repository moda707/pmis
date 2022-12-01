<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="VirtualTour.aspx.cs" Inherits="Project_Management_Information_System1._0.Virtual_Tour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>بازدید مجازی</title>
    <script type="text/javascript" src="js/jquery.flipv.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox-1.3.1.pack.js"></script>
    <link href="css/jquery.fancybox-1.3.1.css" rel="stylesheet" type="text/css" />
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
                <% } if(SI.VirtualTour != Project_Management_Information_System1._0.Access_Type.None)
                    { %>
                <li class="active"><a href="VirtualTour.aspx"><i class="fa fa-camera fa-fw">
                    <div class="icon-bg bg-primary"></div>
                </i><span class="menu-title">بازدید مجازی</span></a>                      
                </li>
            <% } 
                if(SI.DailyReport != Project_Management_Information_System1._0.Access_Type.None)
                { %>
                <li><a href="DailyReport_Management.aspx"><i class="fa fa-list-alt fa-fw">
                    <div class="icon-bg bg-primary"></div>
                </i><span class="menu-title">گزارش روزانه</span></a>                      
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
                    <div class="page-title">بازدید مجازی</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a href="DashBoard.aspx">خانه</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a href="Project_Progress.aspx">بازدید مجازی</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="active">بازدید مجازی</li>
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <!--END TITLE & BREADCRUMB PAGE-->
            <!--BEGIN CONTENT-->
            <div class="page-content" style="font-family:B Nazanin; font-size:12pt;">
                <div id="tab-general">
                    <div class="row">
                        <div class="col-lg-12">                            
                            <div id="mapbox" style="width:100%; height:600px; text-align:center;" align="center">                                
                                <img src="images/Line2-Map.jpg" width="1050" alt="" usemap="#testmap" id="imgMap" runat="server"/>
                                <map name="testmap" style="z-index:9000;">                                    
                                    <area shape="rect" coords="850,100,890,140" href="VirtualTour.aspx?Id=13" target="_blank" alt="دپو" class="mapfancybox" />
                                    <area shape="rect" coords="910,140,950,180" href="VirtualTour.aspx?Id=0" target="_blank" alt="شفت شمالی" class="mapfancybox" />
                                    <area shape="rect" coords="880,170,920,200" href="VirtualTour.aspx?Id=1" target="_blank" alt="A2" class="mapfancybox" />
                                    <area shape="rect" coords="810,220,850,250" href="VirtualTour.aspx?Id=2" target="_blank" alt="B2" class="mapfancybox" />
                                    <area shape="rect" coords="770,260,810,300" href="VirtualTour.aspx?Id=3" target="_blank" alt="C2" class="mapfancybox" />
                                    <area shape="rect" coords="710,305,750,335" href="VirtualTour.aspx?Id=4" target="_blank" alt="D2" class="mapfancybox" />
                                    <area shape="rect" coords="665,340,705,370" href="VirtualTour.aspx?Id=5" target="_blank" alt="E2" class="mapfancybox" />
                                    <area shape="rect" coords="590,320,630,350" href="VirtualTour.aspx?Id=6" target="_blank" alt="F2" class="mapfancybox" />
                                    <area shape="rect" coords="510,350,550,380" href="VirtualTour.aspx?Id=7" target="_blank" alt="G2" class="mapfancybox" />
                                    <area shape="rect" coords="460,370,500,400" href="VirtualTour.aspx?Id=8" target="_blank" alt="H2" class="mapfancybox" />
                                    <area shape="rect" coords="390,405,430,435" href="VirtualTour.aspx?Id=9" target="_blank" alt="I2" class="mapfancybox" />
                                    <area shape="rect" coords="340,425,380,455" href="VirtualTour.aspx?Id=10" target="_blank" alt="J2" class="mapfancybox" />
                                    <area shape="rect" coords="280,450,320,480" href="VirtualTour.aspx?Id=11" target="_blank" alt="K2" class="mapfancybox" />
                                    <area shape="rect" coords="200,440,230,470" href="VirtualTour.aspx?Id=12" target="_blank" alt="L2" class="mapfancybox" />
                                </map>
                            </div>

                            <% if ((int)SI.VirtualTour == (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
                               { %>
                            <a href="VirtualTour_Management.aspx" class="btn btn-link">مدیریت بازدید مجازی</a>
                            <% }%>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
        <div class="VTFrame">
            
        </div>


</div>    
</asp:Content>