<%@ Page Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="User_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.User_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/Chart.js" type="text/javascript"></script>
    <script src="js/Chart.Bar.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div id="wrapper" style="padding-top:50px;">
        <!--BEGIN SIDEBAR MENU-->
        <nav id="sidebar" role="navigation" data-step="2" data-intro="MURL2" data-position="left" class="navbar-default navbar-static-side ">
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
                <li class="active"><a href="User_Management.aspx"><i class="fa fa-users fa-fw">
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
                <li><a href="VirtualTour.aspx"><i class="fa fa-camera fa-fw">
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
                    <div class="page-title">مدیریت کاربران</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a href="DashBoard.aspx">خانه</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a href="Statement_M.aspx">مدیریت کاربران</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="active">مدیریت کاربران</li>
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <!--END TITLE & BREADCRUMB PAGE-->
            <!--BEGIN CONTENT-->
            <div class="page-content">
                <div id="tab-general">
                    <div class="row">
                        <% if ((int)SI.Users <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
                           { %>
                        <div class="col-lg-12">                            
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">ثبت/ویرایش اطلاعات کاربری</div>
                                    <div class="tools">
                                        <i class="fa fa-chevron-up" onclick="javascript:FToggle(this,'pb01');" id="ifa01"></i>
                                        <i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i>
                                        <i class="fa fa-refresh"></i>
                                        <i class="fa fa-times"></i>
                                    </div>
                                </div>
                                <div class="portlet-body" id="pb01">
                                    <ul class="list-group">
                                        <li class="list-group-item form-inline">                        
                                            <span>نام کاربری : </span>
                                            <input type="text" id="txtUserName" runat="server" class="form-control" placeholder="نام کاربری" style="width:200px; font-size:13pt;" />
                                            <span style="padding-right:20px;">رمز عبور : </span>
                                            <input type="password" id="txtPassword" runat="server" class="form-control" placeholder="رمز عبور" style="width:200px; font-size:13pt;" />
                                            <asp:Button ID="btnNewUser" runat="server" CssClass="btn btn-success pull-right" Text="کاربر جدید" OnClick="btnNewUser_Click" />
                                        </li>
                                        <li class="list-group-item form-inline">                        
                                            <span>نام : </span>
                                            <input type="text" id="txtF_Name1" runat="server" class="form-control" placeholder="نام" style="width:200px;font-size:13pt;" />
                                            <span style="padding-right:20px;">نام خانوادگی : </span>
                                            <input type="text" id="txtL_Name1" runat="server" class="form-control" placeholder="نام خانوادگی" style="width:200px;font-size:13pt;" />                                                       
                                        </li>
                                        <li class="list-group-item form-inline">                        
                                            <span>واحد : </span>
                                            <asp:DropDownList ID="dpDepartment" CssClass="form-control" runat="server" Font-Names="tahoma" Font-Size="9pt">
                                                
                                            </asp:DropDownList>

                                            <span style="padding-right:20px;">سطح دسترسی : </span>
                                            <asp:DropDownList CssClass="form-control" ID="dpAccLvl" runat="server" Font-Names="tahoma" Font-Size="9pt">
                                                
                                            </asp:DropDownList>
                                        </li>
                                        <li class="list-group-item form-inline" style="font-size:9pt;">
                                            <table width="100%" cellpadding="5px" cellspacing="5px">
                                                <tr style="text-align:right;">
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>CBS : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpCBS_Mng" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>                                                        
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>WBS : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpWBS_Mng" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>صورت وضعیت ها : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpStatements" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>ماشین آلات و تجهیزات : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpEQ_Mng" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr style="text-align:right;">
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>منابع انسانی : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpHR_Mng" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>قراردادها : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpContracts_Mng" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>پیشرفت پروژه : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpProgress" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>مالی : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpFinance" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr style="text-align:right;">
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>کاربران : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpUsers" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10" Selected="True">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>داشبورد : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpDashboard" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>تراز جاری : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpTarazJari" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>تنظیمات : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpSetting" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2" Selected="True">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr style="text-align:right;">
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>گزارش روزانه : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpDailyReport" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10" Selected="True">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:DropDownList ID="dpStationList" runat="server" CssClass="form-control">
                                                                <asp:ListItem Value="0">شفت شمالی</asp:ListItem>
                                                                <asp:ListItem Value="1">A2</asp:ListItem>
                                                                <asp:ListItem Value="2">B2</asp:ListItem>
                                                                <asp:ListItem Value="3">C2</asp:ListItem>
                                                                <asp:ListItem Value="4">D2</asp:ListItem>
                                                                <asp:ListItem Value="5">E2</asp:ListItem>
                                                                <asp:ListItem Value="6">F2</asp:ListItem>
                                                                <asp:ListItem Value="7">G2</asp:ListItem>
                                                                <asp:ListItem Value="8">H2</asp:ListItem>
                                                                <asp:ListItem Value="9">I2</asp:ListItem>
                                                                <asp:ListItem Value="10">J2</asp:ListItem>
                                                                <asp:ListItem Value="11">K2</asp:ListItem>
                                                                <asp:ListItem Value="12">L2</asp:ListItem>
                                                                <asp:ListItem Value="15">تونل پارکینگ</asp:ListItem>
                                                                <asp:ListItem Value="13">دپو</asp:ListItem>
                                                                <asp:ListItem Value="14">لینک</asp:ListItem>
                                                                <asp:ListItem Value="19">روسازی</asp:ListItem>
                                                                <asp:ListItem Value="17">حفاری شمالی</asp:ListItem>
                                                                <asp:ListItem Value="18">حفاری جنوبی</asp:ListItem>
                                                                <asp:ListItem Value="16">سگمنت</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="alert alert-info">
                                                            <span>بازدید مجازی : </span>
                                                            <asp:DropDownList CssClass="form-control" ID="dpVirtualTour" runat="server">
                                                                <asp:ListItem Value="0">ویرایش کامل</asp:ListItem>
                                                                <asp:ListItem Value="1">ویرایش محدود</asp:ListItem>
                                                                <asp:ListItem Value="2">مشاهده کامل</asp:ListItem>
                                                                <asp:ListItem Value="3">مشاهده محدود</asp:ListItem>
                                                                <asp:ListItem Value="10" Selected="True">هیچ</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </li>
                                    </ul>
                                    <div class="text-center" style="width:100%;">
                                        <asp:Button ID="btnSave" CssClass="btn btn-success" runat="server" Text="ذخیره" Font-Names="tahoma" 
                                                    Font-Size="9pt" onclick="btnSave_Click"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%} %>
                        <% if ((int)SI.Users <= (int)Project_Management_Information_System1._0.Access_Type.View_2)
                           { %>
                        <div class="col-lg-12">                            
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">لیست کاربران</div>
                                    <div class="tools">
                                        <i class="fa fa-chevron-up" onclick="javascript:FToggle(this,'pb02');" id="ifa02"></i>
                                        <i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i>
                                        <i class="fa fa-refresh"></i>
                                        <i class="fa fa-times"></i>
                                    </div>
                                </div>
                                <div class="portlet-body" id="pb02">
                                    <div style="overflow-x:hidden; overflow-y:scroll; max-height:400px;">
                                    <table class="table table-hover" style="font-size:12pt;">
                                        <thead>
                                            <tr>
                                                <th>
                                                    #
                                                </th>
                                                <th>
                                                    نام
                                                </th>
                                                <th>
                                                    نام کاربری
                                                </th>
                                                <th>
                                                    واحد
                                                </th>
                                                <th>
                                                    سطح دسترسی
                                                </th>
                                                <th>
                                
                                                </th>
                                                <th>
                                
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% = RPContent %>
                                        </tbody>
                                    </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%} %>
                        <% if ((int)SI.Users <= (int)Project_Management_Information_System1._0.Access_Type.View_1)
                           { %>
                        <div class="col-lg-12">                            
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">سابقه فعالیت کاربران</div>
                                    <div class="tools">
                                        <i class="fa fa-chevron-up" onclick="javascript:FToggle(this,'pb03');" id="ifa03"></i>
                                        <i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i>
                                        <i class="fa fa-refresh"></i>
                                        <i class="fa fa-times"></i>
                                    </div>
                                </div>
                                <div class="portlet-body" id="pb03">
                                    <div class="form-inline">
                                        <asp:TextBox ID="txtSUser_Name" runat="server" Cssclass="form-control" placeholder="نام کاربری"></asp:TextBox>
                                        <span> از:</span>
                                        <asp:TextBox ID="txtSFromDate" runat="server" Cssclass="form-control">1394/06/01</asp:TextBox>
                                        <span> تا:</span>
                                        <asp:TextBox ID="txtSToDate" runat="server" Cssclass="form-control">1394/06/10</asp:TextBox>
                                        <span> چینش:</span>
                                        <asp:DropDownList ID="dpSGroupBy" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="0">تاریخ</asp:ListItem>
                                            <asp:ListItem Value="1">کاربر</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Button ID="btnSSubmit" runat="server" CssClass="btn btn-info" OnClick="btnSSubmit_Click" Text="نمایش" />
                                    </div>
                                    <div style="overflow-x:hidden; overflow-y:scroll; max-height:400px;">
                                    <table class="table table-hover" style="font-size:12pt;">
                                        <thead>
                                            <tr>
                                                <th>
                                                    زمان
                                                </th>
                                                <th>
                                                    نام
                                                </th>
                                                <th style="width:60px;">
                                                    نام کاربری
                                                </th>
                                                <th>
                                                    بخش
                                                </th>
                                                <th>
                                                    فعالیت
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% = LogContent %>
                                        </tbody>
                                    </table>
                                    </div>
                                    <br />
                                    <div>
                                        <ul class="list-group" style="text-align:center";>
                                            <li class="list-group-item">
                                                <table class="table">
                                                    <tr>
                                                        <td>
                                                            تعداد کل رکوردها:
                                                        </td>
                                                        <td style="direction:ltr;">
                                                            <% = AllRecordsCount %>
                                                        </td>
                                                        <td>
                                                            محبوب ترین بخش:                                                     
                                                        </td>
                                                        <td style="direction:ltr;">
                                                            <% = BestPart %>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                           فعال ترین کاربر:
                                                        </td>
                                                        <td style="direction:ltr;">
                                                            <% = BestUser %>
                                                        </td>
                                                        <td colspan="2">
                                                            <button id="btnClearHistory" runat="server" class="btn btn-danger">حذف سوابق ماقبل یک هفته<span class="glyphicon glyphicon-remove"></span></button>
                                                        </td>                                                        
                                                    </tr>
                                                </table>
                                            </li>
                                            <li class="list-group-item">
                                                
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%} %>
                    </div>
                </div>
            </div>    
        </div>
    </div>
</asp:Content>

    