<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="DailyReport_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.DailyReport_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>گزارش روزانه</title>    
	<link rel="stylesheet" href="css/PC/jspc-gray.css"/>
	<script type="text/javascript" src="css/PC/js-persian-cal.min.js"></script>
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
                       if(SI.VirtualTour != Project_Management_Information_System1._0.Access_Type.None)
                    { %>
                <li><a href="VirtualTour.aspx"><i class="fa fa-camera fa-fw">
                    <div class="icon-bg bg-primary"></div>
                </i><span class="menu-title">بازدید مجازی</span></a>                      
                </li>
            <% } 
                if(SI.DailyReport != Project_Management_Information_System1._0.Access_Type.None)
                { %>
                <li class="active"><a href="DailyReport_Management.aspx"><i class="fa fa-list-alt fa-fw">
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
                    <div class="page-title">مدیریت گزارشات روزانه</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i><a href="DashBoard.aspx">خانه</a><i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a href="Statement_M.aspx">گزارشات روزانه</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="active">گزارشات روزانه</li>
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <!--END TITLE & BREADCRUMB PAGE-->
            <!--BEGIN CONTENT-->
            <div class="page-content">
                <div id="tab-general">
                    <div class="row">
                        <% if ((int)SI.DailyReport <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
                            { %>
                        <div class="col-lg-12">
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">ایستگاه ها</div>
                                    <div class="tools">
                                        <i id="ifa01" class="fa fa-chevron-up" onclick="javascript:FToggle(this,'pb01');"></i>
                                        <i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i>
                                        <i class="fa fa-refresh"></i>
                                        <i class="fa fa-times"></i>
                                    </div>
                                </div>
                                
                                <div class="portlet-body" id="pb01">
                                    <div class="form-inline" style="font-family:B Nazanin; font:14pt;">
                                        <span>تاریخ : </span>
                                        <input type="text" id="txtDateMng" runat="server" class="form-control" />
                                        
                                        <button id="btnLoadReports" runat="server" onserverclick="btnLoadReports_Click" class="btn btn-info">اعمال <i class="glyphicon glyphicon-circle-arrow-left"></i></button>
                                        
                                    </div><br />
                                    <div style="width:100%;font-family:B Nazanin; font-size:16pt;" class="alert alert-info">
                                        <table style="width:100%">
                                            <tr>
                                                <td style="width:85%; padding-left:40px;">
                                                    <table style="width:100%">
                                                        <tr>
                                                            <td>
                                                                تاریخ:
                                                            </td>
                                                            <td>
                                                                <% = strCurrRepDate%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="vertical-align:top;">
                                                                وضعیت ثبت گزارش ایستگاه ها:
                                                            </td>
                                                            <td style="width:70%;">
                                                                <div class="progress">
                                                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="<% = strRegisterPercent %>" aria-valuemin="0" aria-valuemax="100" style="width: <% = strRegisterPercent %>%;"><% = strRegisterPercent %>%
                                                                    <span class="sr-only"><% = strRegisterPercent %>% تکمیل شده</span>
                                                                  </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                وضعیت تائید گزارش ایستگاه ها:
                                                            </td>
                                                            <td>
                                                                <div class="progress">
                                                                  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="<% = strConfirmPercent %>" aria-valuemin="0" aria-valuemax="100" style="width: <% = strConfirmPercent %>%;"><% = strConfirmPercent %>%
                                                                    <span class="sr-only"><% = strConfirmPercent %>% تائید شده</span>
                                                                  </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                وضعیت گزارش:
                                                            </td>
                                                            <td>
                                                                <div class="form-inline">
                                                                    <table style="width:100%;margin-top:20px;">
                                                                        <tr>
                                                                            <td>
                                                                                <input type="button" class="btn btn-danger" style="margin-right:30px; font-size:16pt;" value="ثبت" id="btnsregister" runat="server" />                                                                                    
                                                                                
                                                                            </td>
                                                                            <td style="text-align:center">
                                                                               > 
                                                                            </td>
                                                                            <td>
                                                                                <input type="button" class="btn btn-warning" style="margin-right:30px; font-size:16pt;" value="تائید" id="btnsconfirm" runat="server" />
                                                                                 
                                                                            </td>
                                                                            <td style="text-align:center">
                                                                                >
                                                                            </td>
                                                                            <td>
                                                                                <input type="button" class="btn btn-success" style="margin-right:30px; font-size:16pt;" value="گردآوری" id="btnscomplete" runat="server" />
                                                                                
                                                                            </td>
                                                                            <td style="text-align:center">
                                                                                >
                                                                            </td>
                                                                            <td>
                                                                                <input type="button" class="btn btn-info" style="margin-right:30px; font-size:16pt;" value="گزارش گیری" id="btnsreport" runat="server" />
                                                                                
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table><br />
                                                </td>
                                                <td>
                                                    <table style="width:100%; vertical-align:top;">
                                                        <tr>
                                                            <td style="text-align:center;">
                                                                <span id="txtCWeather" runat="server">بارانی</span>
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <span id="txtCTempMax" runat="server" class="badge badge-red">20</span><hr />
                                                                <span id="txtCTempMin" runat="server" class="badge badge-blue">4</span>
                                                            </td>
                                                        </tr>
                                                    </table><br />
                                                    
                                                    <input type="button" data-toggle="modal" data-target="#myModalConfirm" class="btn btn-success" style="vertical-align:bottom; width:150px;" value="گردآوری" id="btndocomplete" runat="server" />                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </div><br />
                                    <div class="Scroller">
                                        <div style="width:100%;font-family:B Nazanin; font:14pt;">
                                            <table class="table table-advanced text-center" style="font-size:12pt;">
                                                <thead >
                                                    <tr>
                                                        <th>
                                                        
                                                        </th>
                                                        <th style="text-align:center;">
                                                            ایستگاه
                                                        </th>
                                                        <th style="text-align:center;">
                                                            وضعیت
                                                        </th>
                                                        <th style="text-align:center;">
                                                            مسئول
                                                        </th>
                                                        <th style="text-align:center;">
                                                            شماره تماس
                                                        </th>
                                                        <th style="text-align:left;">
                                                            تاریخ :
                                                    
                                                        
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% = StationStatusContent%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <% } %>

                        <% if ((int)SI.DailyReport <= (int)Project_Management_Information_System1._0.Access_Type.View_1)
                        { %>
                        <div class="col-lg-12">
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">فرم گزارش روزانه</div>
                                    <div class="tools">
                                        <i id="ifa02" class="fa fa-chevron-up" onclick="javascript:FToggle(this,'pb02');"></i>
                                        <i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i>
                                        <i class="fa fa-refresh"></i>
                                        <i class="fa fa-times"></i>
                                    </div>
                                </div>
                                <div class="portlet-body" id="pb02">
                                    <div class="form-inline" style="font-family:B Nazanin; font:14pt;">
                                        <span>تاریخ : </span>
                                        <input type="text" id="txtDRDate" runat="server" class="form-control" />
                                        <asp:RequiredFieldValidator ID="rfvtxtDRDate" runat="server" ControlToValidate="txtDRDate" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        <span style="padding-right:30px;">ایستگاه : </span>
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
                                        <button id="btnLoadDR" runat="server" onserverclick="btnLoadDR_Click" class="btn btn-info">اعمال <i class="glyphicon glyphicon-circle-arrow-left"></i></button>

                                        <div class="form-inline pull-right">
                                            <span>وضعیت آب و هوا: </span>
                                            <asp:DropDownList ID="dpDRWeather" runat="server">
                                                <asp:ListItem Value="0">آفتابی</asp:ListItem>
                                                <asp:ListItem Value="1">ابری</asp:ListItem>
                                                <asp:ListItem Value="2">بارانی</asp:ListItem>
                                                <asp:ListItem Value="3">برفی</asp:ListItem>
                                            </asp:DropDownList>
                                            <span>دما: کمینه: </span><input type="text" class="form-control" style="width:50px;" id="txtDRMinTemp" runat="server" />                                            
                                            <span>  بیشینه: </span><input type="text" class="form-control" style="width:50px;" id="txtDRMaxTemp" runat="server" />                                            
                                        </div>
                                    </div><br />
                                    <div style="width:100%;font-family:B Nazanin; font:14pt;">
                                        <table class="table table-advanced table-bordered text-center" style="font-size:12pt;">
                                            <thead >
                                                <tr style="text-align:center;">
                                                    <th colspan="2" style="text-align:center;">
                                                        نیروی انسانی
                                                    </th>                                                
                                                    <th colspan="4" style="text-align:center;">
                                                        مصالح ورودی
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <th style="text-align:center;">
                                                        قرارگاه
                                                    </th>
                                                    <th style="text-align:center;">
                                                        پیمانکار
                                                    </th>                                                
                                                    <th style="text-align:center;">
                                                        آرماتور
                                                    </th>
                                                    <th style="text-align:center;">
                                                        عایق
                                                    </th>
                                                    <th style="text-align:center;">
                                                        بتن
                                                    </th>
                                                    <th style="text-align:center;">
                                                        سیمان
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <th style="text-align:center;">
                                                        unit
                                                    </th>
                                                    <th style="text-align:center;">
                                                        unit
                                                    </th>                                                
                                                    <th style="text-align:center;">
                                                        ton
                                                    </th>
                                                    <th style="text-align:center;">
                                                        m2
                                                    </th>
                                                    <th style="text-align:center;">
                                                        m3
                                                    </th>
                                                    <th style="text-align:center;">
                                                        ton
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtHRGH" class="form-control" />
                                                        
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtHRP" class="form-control" />
                                                        
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtMatArm" class="form-control" />
                                                        
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtMatAyegh" class="form-control" />
                                                        
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtMatBeton" class="form-control" />
                                                        
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtMatSiman" class="form-control" />
                                                        
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br />
                                        <table class="table table-advanced table-bordered text-center" style="font-size:12pt;">
                                            <thead>
                                                <tr>
                                                    <th colspan="13" style="text-align:center;">
                                                        ماشین آلات
                                                    </th>                                                    
                                                </tr>
                                                <tr>
                                                    <th style="text-align:center;">
                                                        جرثقیل
                                                    </th>
                                                    <th style="text-align:center;">
                                                        تاورکرین
                                                    </th>                                                
                                                    <th style="text-align:center;">
                                                        بیل مکانیکی
                                                    </th>
                                                    <th style="text-align:center;">
                                                        لودر
                                                    </th>
                                                    <th style="text-align:center;">
                                                        بولدوزر
                                                    </th>
                                                    <th style="text-align:center;">
                                                        کمپرسی
                                                    </th>
                                                    <th style="text-align:center;">
                                                        میکسر
                                                    </th>
                                                    <th style="text-align:center;">
                                                        دوربین نقشه
                                                    </th>
                                                    <th style="text-align:center;">
                                                        بچینگ
                                                    </th>
                                                    <th style="text-align:center;">
                                                        پمپ بتن
                                                    </th>
                                                    <th style="text-align:center;">
                                                        کمپرسور
                                                    </th>
                                                    <th style="text-align:center;">
                                                        پمپ کفکش
                                                    </th>
                                                    <th style="text-align:center;">
                                                        قالب
                                                    </th>
                                                </tr>                                                
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqJaresaghil" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqTower" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqBil" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqLoader" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqBoldozer" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqCompressi" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqMixer" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqDoorbin" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqBatching" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqPompBeton" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqCompressor" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqPompKafkesh" class="form-control" />
                                                    </td>
                                                    <td style="text-align:center;">
                                                        <input type="text" runat="server" id="txtEqGhaleb" class="form-control" />
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br />
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#Station" data-toggle="tab">فعالیت ایستگاه</a></li>
                                            <li><a href="#Masir" data-toggle="tab">فعالیت مسیر</a></li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="Station">                                                
                                                <table class="table table-advanced table-bordered text-center" style="font-size:12pt;">
                                                    <thead>                                                 
                                                        <tr>
                                                            <th colspan="11" style="text-align:center;">
                                                                ابنیه
                                                            </th>                                                    
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                خاکبرداری
                                                            </th>
                                                            <th style="text-align:center;">
                                                                بتن مگر
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                آرماتوربندی
                                                            </th>
                                                            <th style="text-align:center;">
                                                                قالب بندی
                                                            </th>
                                                            <th style="text-align:center;">
                                                                بتن سازه ای
                                                            </th>
                                                            <th style="text-align:center;">
                                                                شاتکریت
                                                            </th>
                                                            <th style="text-align:center;">
                                                                برچیدن استرات
                                                            </th>
                                                            <th style="text-align:center;">
                                                                آسفالت
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                عایق کاری
                                                            </th>
                                                            <th>
                                                                بکفیل
                                                            </th>
                                                            <th style="text-align:center;">
                                                                حفاری چاه
                                                            </th>                                                    
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                m3
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m3
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                ton
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m3
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>
                                                            <th style="text-align:center;">
                                                                kg
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m3
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m3
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConKhakbardari" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConBetonMegr" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConArmator" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConGhalebbandi" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConBetonSazei" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConShatkerit" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConEsterat" class="form-control"  value="0"/>
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConAsfalt" class="form-control"  value="0"/>
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConAyeghkari" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConBackfill" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtConHaffari" class="form-control"  value="0"/>
                                                            </td>                                                    
                                                        </tr>
                                                    </tbody>                                            
                                                </table>
                                                <br />
                                                <table class="table table-advanced table-bordered text-center" style="font-size:12pt;">
                                                    <thead>                                                 
                                                        <tr>
                                                            <th colspan="11" style="text-align:center;">
                                                                نازک کاری
                                                            </th>                                                    
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                دیوارچینی
                                                            </th>
                                                            <th style="text-align:center;">
                                                                شاسی کشی
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                نصب والپست
                                                            </th>
                                                            <th style="text-align:center;">
                                                                اجرای سقف
                                                            </th>
                                                            <th style="text-align:center;">
                                                               سرامیک و کاشی
                                                            </th>
                                                            <th style="text-align:center;">
                                                                رنگ آمیزی
                                                            </th>                                                    
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                kg
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m2
                                                            </th>                                                    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtNKDivar" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtNKShasiKeshi" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtNKWallPost" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtNKSaghf" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtNKCeramik" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtNKRang" class="form-control" value="0" />
                                                            </td>
                                                        </tr>
                                                    </tbody>                                            
                                                </table>
                                                <br />
                                                <table class="table table-advanced table-bordered text-center" style="font-size:12pt;">
                                                    <thead>                                                 
                                                        <tr>
                                                            <th colspan="4" style="text-align:center;">
                                                                مکانیکال
                                                            </th>                                                    
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                کانال کشی
                                                            </th>
                                                            <th style="text-align:center;">
                                                                لوله کشی
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                نصب ساپورت
                                                            </th>                                                                                                   
                                                            <th style="text-align:center;">
                                                                نصب گاتر
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                m
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                unit
                                                            </th>                                            
                                                            <th style="text-align:center;">
                                                                unit
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMechCanal" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMechLoole" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMechSupport" class="form-control" value="0" />
                                                            </td>                                                    
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMechGutter" class="form-control" value="0" />
                                                            </td> 
                                                        </tr>
                                                    </tbody>                                            
                                                </table>
                                                <br />
                                                <table class="table table-advanced table-bordered text-center" style="font-size:12pt;">
                                                    <thead>                                                 
                                                        <tr>
                                                            <th colspan="4" style="text-align:center;">
                                                                الکتریکال
                                                            </th>                                                    
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                کابل کشی
                                                            </th>
                                                            <th style="text-align:center;">
                                                                سینی کابل
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                نصب ساپورت
                                                            </th>
                                                            <th style="text-align:center;">
                                                                لوله فلزی
                                                            </th>                                     
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                m
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                unit
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m
                                                            </th>                                         
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtElecCable" class="form-control" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtElecSini" class="form-control" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtElecSupport" class="form-control" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtElecLoole" class="form-control" />
                                                            </td>                                                    
                                                        </tr>
                                                    </tbody>                                            
                                                </table>
                                                <br />
                                            </div>
                                            <div class="tab-pane" id="Masir">
                                                <table class="table table-advanced table-bordered text-center" style="font-size:12pt;">
                                                    <thead>                                                 
                                                        <tr>
                                                            <th colspan="11" style="text-align:center;">
                                                                اجرا
                                                            </th>                                                    
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                حفاری TBM
                                                            </th>
                                                            <th style="text-align:center;">
                                                                تولید کیج
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                تولید تراورس
                                                            </th>
                                                            <th style="text-align:center;">
                                                                تولید سگمنت (رینگ)
                                                            </th>
                                                            <th style="text-align:center;">
                                                                بتن ریزی
                                                            </th>                                                            
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align:center;">
                                                                m
                                                            </th>
                                                            <th style="text-align:center;">
                                                                عدد
                                                            </th>                                                
                                                            <th style="text-align:center;">
                                                                عدد
                                                            </th>
                                                            <th style="text-align:center;">
                                                                رینگ
                                                            </th>
                                                            <th style="text-align:center;">
                                                                m3
                                                            </th>                                                            
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMTBM" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMCage" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMTravers" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMSegment" class="form-control" value="0" />
                                                            </td>
                                                            <td style="text-align:center;">
                                                                <input type="text" runat="server" id="txtMBeton" class="form-control" value="0" />
                                                            </td>                                                            
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <br />
                                            </div>
                                        </div>

                                        <div style="width:100%;">
                                            <asp:TextBox TextMode="MultiLine" ID="txtDesc" runat="server" Width="100%" Height="100px"></asp:TextBox>
                                        </div><br />
                                        <div class="form-inline" style="text-align:center;">
                                            <button type="button" id="btnSaveForm" runat="server" class="btn btn-success" value="ذخیره" onserverclick="btnSaveForm_Click">ذخیره</button>

                                            <button type="button" id="btnClearForm" runat="server" class="btn btn-default" value="خالی کردن فرم" onserverclick="btnClearForm_Click">خالی کردن فرم</button>
                                            <% if ((int)SI.DailyReport <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
                                               { %>
                                            <button type="button" id="btnVerify" runat="server" class="btn btn-orange" onserverclick="btnVerify_Click" style="padding-right:30px;">تائید گزارش</button>
                                            <% } %>
                                        </div>
                                    </div>                                                                        
                                </div>
                            </div>
                        </div>
                        
                        <%} %>
                        

                    <div class="modal fade" id="myModalConfirm" tabindex="-1" role="dialog" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" style="font-family:B Nazanin; font:14pt;">ایجاد گزارش جدید</h4>
                          </div>
                          <div class="modal-body">
                            <div class="form-inline" style="font-family:B Nazanin; font:14pt; text-align:center; vertical-align:middle;" align="center">
                                <span style="font-family:B Nazanin; font:14pt;">انتخاب تاریخ : </span><input class="pdate form-control" type="text" id="txtCreatDate" runat="server" style="direction:ltr; width:150px; height:30px;" />
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">انصراف</button>
                            
                          </div>
                        </div><!-- /.modal-content -->
                      </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->
                    </div>
                    </div>
                </div>
            </div>
            <div id="footer">
                <div class="copyright">
                    <a href="#">تهیه شده توسط واحد کنترل پروژه - خط 2 قطار شهری مشهد</a>
                </div>
            </div>        
        </div>
    <script type="text/javascript">
        var objCal1 = new AMIB.persianCalendar('ctl00_ContentPlaceHolder1_txtDateMng', {
            initialDate: '<% = CurrentDate %>'
        }
		);

        var objCal2 = new AMIB.persianCalendar('ctl00_ContentPlaceHolder1_txtDRDate', {
            initialDate: '<% = TodayDate %>'
        }
		);
    </script>
    <!--END CONTENT-->
    <!--BEGIN FOOTER-->
    
    <!--END FOOTER-->
        </div>
</asp:Content>
