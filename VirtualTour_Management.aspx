<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="VirtualTour_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.VirtualTour_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>مدیریت بازدید مجازی</title>    
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
                    <div class="page-title">مدیریت بازدید مجازی</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i><a href="DashBoard.aspx">خانه</a><i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a href="Statement_M.aspx">بازدید مجازی</a>&nbsp;&nbsp;<i class="fa fa-angle-left"></i>&nbsp;&nbsp;</li>
                    <li class="active">بازدید مجازی</li>
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <!--END TITLE & BREADCRUMB PAGE-->
            <!--BEGIN CONTENT-->
            <div class="page-content">
                <div id="tab-general">
                    <div class="row">                        
                        <div class="col-lg-12">
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">تورهای ثبت شده</div>
                                    <div class="tools">
                                        <i id="ifa01" class="fa fa-chevron-up" onclick="javascript:FToggle(this,'pb01');"></i>
                                        <i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i>
                                        <i class="fa fa-refresh"></i>
                                        <i class="fa fa-times"></i>
                                    </div>
                                </div>
                                
                                <div class="portlet-body" id="pb01">
                                    <div class="form-inline" style="font-family:B Nazanin; font:14pt;">                                                                                
                                        <button type="button" data-toggle="modal" data-target="#myModalTour" class="btn btn-success pull-right">ثبت تور جدید <i class="glyphicon glyphicon-plus"></i></button><br /> <br />
                                    </div>                                  
                                    <div class="Scroller">
                                        <div style="width:100%;font-family:B Nazanin; font:14pt;">
                                            <table class="table table-advanced text-center" style="font-size:12pt;">
                                                <thead >
                                                    <tr>
                                                        <th>
                                                            تاریخ
                                                        </th>
                                                        <th style="text-align:center;">
                                                            عنوان
                                                        </th>
                                                        <th style="text-align:center;">
                                                            ایستگاه
                                                        </th>
                                                        <th style="text-align:center;">
                                                            پیش فرض
                                                        </th>
                                                        <th style="text-align:center;">
                                                            تنظیمات
                                                        </th>
                                                        <th style="text-align:center;">
                                                            مشاهده
                                                        </th>
                                                        <th style="text-align:center;">
                                                            حذف
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% = TourListContent %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                        </div>

                        <% if (IsSetting)
                           { %>
                        <div class="col-lg-12" id="k1">
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">تنظیمات تور مجازی جاری</div>
                                    <div class="tools">
                                        <i id="i1" class="fa fa-chevron-up" onclick="javascript:FToggle(this,'pb02');"></i>
                                        <i data-toggle="modal" data-target="#modal-config" class="fa fa-cog"></i>
                                        <i class="fa fa-refresh"></i>
                                        <i class="fa fa-times"></i>
                                    </div>
                                </div>                                
                                <div class="portlet-body" id="pb02">
                                    <div style="width:100%; position:relative;">
                                        <img src="" id="imgPic" runat="server" style="cursor:crosshair; width:100%;" />
                                        <span id="slWin" class="glyphicon glyphicon-th-large" style="display:none; position:absolute; left:300px; top:100px; color:Red;"></span>
                                    </div><br />
                                    <div class="form-inline">
                                        <span>موقعیت: </span>
                                        <input type="text" readonly="readonly" id="txtLTop" runat="server" class="form-control" />
                                        <span class="glyphicon glyphicon-arrow-up"></span>
                                        <input type="text" readonly="readonly" id="txtLLeft" runat="server" class="form-control" style="margin-left:15px;" />
                                        <span class="glyphicon glyphicon-arrow-left"></span>
                                        <span style="margin-right:20px;">ابعاد: </span>
                                        <input type="text" id="txtLWidth" runat="server" class="form-control" value="100" />
                                        <span class="glyphicon glyphicon-resize-horizontal"></span>
                                        <input type="text" id="txtLHeight" runat="server" class="form-control" style="margin-right:15px;" value="100" />
                                        <span class="glyphicon glyphicon-resize-vertical"></span>
                                    </div><br />
                                    <div class="form-inline">
                                        <span>مقصد: </span>
                                        <input type="text" readonly="readonly" id="txtlTarget" runat="server" class="form-control" style="width:250px; font-weight:bolder;" />
                                        <input type="text" readonly="readonly" style="display:none;" id="txtlTargetID" runat="server" />
                                    </div>
                                    <div style="width:100%;" align="center">
                                    <div style="width:500px; position:relative; z-index: 5;" class="text-center">
                                        <img src="" id="imgLMap" runat="server" style="width:500px;" />
                                        <% = LinksOnMapContent %>                                        
                                    </div>
                                    </div><br />
                                    <div class="form-inline">
                                        <asp:Button ID="btnCancle" runat="server" OnClick="btnCancle_Click" CssClass="btn btn-default" Text="انصراف" />
                                        <asp:Button ID="btnAddLink" runat="server" OnClick="btnAddLink_Click" CssClass="btn btn-success" Text="افزودن" />
                                    </div><br /><br />
                                    <div style="width:100%;">
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <th>
                                                    عنوان
                                                </th>
                                                <th>
                                                    موقعیت
                                                </th>
                                                <th>
                                                    مشاهده
                                                </th>
                                                <th>
                                                    حذف
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <% = ListOfLinksContent %>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <% }%>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="myModalTour" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content" id="myModall">
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" style="font-family:B Nazanin; font:14pt;">ایجاد تور جدید</h4>
                </div>
                <div class="modal-body">
                    <iframe id="imgframe" width="100%" height="440px" src="VTStationsFrame.aspx?=A2-1" frameborder="0">
                        
                    </iframe>
                    <br />
                    <div>                        
                        <div class="form-inline" style="font-family:B Nazanin; font:14pt; text-align:center; vertical-align:middle;" align="center">
                            <span style="font-family:B Nazanin; font:14pt;">ایستگاه : </span>
                            <select id="dpStationsCreat1" onchange="javascript:SetStationMap(this.value);" class="form-control" runat="server">
                                <option value="A2-1">A2</option>
                                <option value="B2-2">B2</option>
                                <option value="C2-3">C2</option>
                                <option value="D2-4">D2</option>
                                <option value="E2-5">E2</option>
                                <option value="F2-6">F2</option>
                                <option value="G2-7">G2</option>
                                <option value="H2-8">H2</option>
                                <option value="I2-9">I2</option>
                                <option value="J2-10">J2</option>
                                <option value="K2-11">K2</option>
                                <option value="L2-12">L2</option>
                                <option value="Depo-13">Depo</option>
                            </select>
                            <span style="font-family:B Nazanin; font:14pt;">تاریخ : </span><input class="pdate form-control" type="text" id="txtCreatDate1" runat="server" style="direction:ltr; width:110px; height:30px;" />
                        </div>
                        <input type="text" id="txtCreatTitle1" runat="server" class="form-control" style="width:60%;" />
                        <br />
                        <textarea id="txtCreatDescription1" runat="server" class="form-control" rows="4"></textarea>
                        <asp:FileUpload ID="flFile" runat="server" CssClass="form-control" />
                    </div><br />
                    <input type="text" id="txtTargetPosID" runat="server" style="display:none;" />
                    <input type="text" id="txtmouseleft1" runat="server" style="display:none;" />
                    <input type="text" id="txtmousetop1" runat="server" style="display:none;" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">انصراف</button>                    
                    <asp:Button ID="btnMMM" CssClass="btn btn-success" runat="server" Text="ثبت" onclick="btnMMM_Click" />
                </div>
            </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </div>
    <script type="text/javascript">
        var objCal1 = new AMIB.persianCalendar('ctl00_ContentPlaceHolder1_txtCreatDate1', {            
        }
		);
                        
                
    </script>
</asp:Content>