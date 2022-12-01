<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="Project_Progress.aspx.cs" Inherits="Project_Management_Information_System1._0.Project_Progress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Project Progress</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>PMIS MODA</span></a>
            </div>

            <div class="clearfix"></div>
              
            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2><%= SI.User_FullName %></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                    <% if (SI.DashBoard != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                    <li><a href="Dashboard.aspx"><i class="fa fa-tachometer fa-fw"></i> Dashboard </a></li>

                    <%  } if (SI.Statement_M != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                    <li><a><i class="fa fa-desktop fa-fw"></i> Statements <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="Statement_M.aspx">Main</a></li>
                            <li><a href="Statement_J.aspx">Adjustments</a></li>
                        </ul>
                    </li>
                    <%  } if(SI.Finance != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                      <li><a><i class="fa fa-money fa-fw"></i> Financial <span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                              <li><a href="TarazJari_Management.aspx">Current Account</a></li>
                              <li><a href="Finance_Management.aspx">Financial States</a></li>
                          </ul>
                      </li>
                    <%  } if (SI.Project_Progress != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                    <li class="active"><a href="Project_Progress.aspx"><i class="fa fa-signal fa-fw"></i> Project Progress </a></li>
                    <%  } if (SI.Human_Resource != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                  <li><a><i class="fa fa-sitemap fa-fw"></i> Resources <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="Human_Resource.aspx">Human Resource</a></li>
                      <li><a href="Equipment_Management.aspx">Equipments</a></li>                      
                    </ul>
                  </li>
                    <% } if (SI.Users != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                  <li><a><i class="fa fa-users fa-fw"></i> Setting <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="User_Management.aspx">Users</a></li>
                      <li><a href="DashBoard.aspx">Setting</a></li>
                    </ul>
                  </li>
                    <% } if (SI.VirtualTour != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                    <li><a href="VirtualTour.aspx"><i class="fa fa-camera fa-fw"></i> Virtual Tour </a></li>
                    <% } if (SI.DailyReport != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                    <li><a href="DailyReport_Management.aspx"><i class="fa fa-list-alt fa-fw"></i> Daily Report </a></li>
                    <% } %>
                </ul>
              </div>
              

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
    </div>
    
    <div class="right_col" role="main">
        <div class="page-title">
            <div class="title_left">
                <h3>Statements</h3>
            </div>
            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for..."/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>

        <% if ((int)SI.Project_Progress <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
            { %>
        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Data Entery</h2>
                    <ul class="nav navbar-right panel_toolbox">                        
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a></li>
                                <li><a href="#">Settings 2</a></li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                    </ul>
                    <div class="clearfix"></div>
                </div>

                <div class="x_content">
                    <div class="portlet-body" id="pb01">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <h3 style="font-family:B Nazanin;">
                                    Physical: 
                                </h3>
                            </li>
                            <li class="list-group-item form-inline">                            
                                <span style="padding-right:10px;">Date : </span>
                                <asp:DropDownList ID="dpPhDates" runat="server" CssClass="form-control" EnableViewState="true" OnTextChanged="dpPhDates_Changed1" AutoPostBack="True">
                                                
                                </asp:DropDownList>
                                <span style="padding-right:10px;">Type of Plan : </span>
                                <asp:DropDownList ID="dpPhType" runat="server" CssClass="form-control">
                                    <asp:ListItem Selected="True" Value="0">98 mo</asp:ListItem>
                                </asp:DropDownList>
                                <span style="padding-right:10px;">Schedule progress : </span>
                                <asp:TextBox ID="txtPhSch" runat="server" CssClass="form-control" Width="100px"></asp:TextBox>
                                <span style="padding-right:10px;">Actual progress : </span>
                                <asp:TextBox ID="txtPhActual" runat="server" CssClass="form-control" Width="100px"></asp:TextBox>
                                <button id="btnPhSave" runat="server" onserverclick="btnPhSave_Click" class="btn btn-success">Save<span class="glyphicon glyphicon-save"></span></button>
                            </li>                        
                            <li class="list-group-item">
                                <h3 style="font-family:B Nazanin;">
                                    Financial: 
                                </h3>
                            </li>
                            <li class="list-group-item form-inline">                            
                                <span style="padding-right:10px;">Date : </span>
                                <asp:DropDownList ID="dpFDates" runat="server" CssClass="form-control" OnTextChanged="dpFDates_Changed">
                                                
                                </asp:DropDownList>
                                <span style="padding-right:10px;">Type of plan : </span>
                                <asp:DropDownList ID="dpFType" runat="server" CssClass="form-control">
                                    <asp:ListItem Selected="True" Value="0">98 mo</asp:ListItem>
                                </asp:DropDownList>
                                <span style="padding-right:10px;">Schedule progress : </span>
                                <asp:TextBox ID="txtFSch" runat="server" CssClass="form-control" Width="100px"></asp:TextBox>
                                <span style="padding-right:10px;">Actual progress : </span>
                                <asp:TextBox ID="txtFActual" runat="server" CssClass="form-control" Width="100px"></asp:TextBox>
                                <button id="btnFSave" runat="server" onserverclick="btnPhSave_Click" class="btn btn-success">Save<span class="glyphicon glyphicon-save"></span></button>
                            </li>
                        </ul>
                    </div>
                </div>                        
            </div>
        </div><br />

        <% } if ((int)SI.Project_Progress <= (int)Project_Management_Information_System1._0.Access_Type.View_1)
            { %>
        <div style="display:none;">
            <% = PPContent %>
        </div>
        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Report</h2>
                    <ul class="nav navbar-right panel_toolbox">                        
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a></li>
                                <li><a href="#">Settings 2</a></li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                    </ul>
                    <div class="clearfix"></div>
                </div>

                <div class="x_content">
                    <div class="portlet-body" id="pb02">
                        <table width="200px">
                            <tr>
                                <td style="text-align:left">Schedule</td>
                                <td style="background-color:#116641; width:20px;">   </td>
                                <td style="text-align:left">Actual</td>
                                <td style="background-color:#65C7C7; width:20px;">   </td>
                            </tr>
                        </table>

                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <h3 style="font-family:B Nazanin;">S Curve of Physical progress</h3>
                                <div id="canvasContainer">
                                <canvas id="canvasPhys" height="500px" width="900px"></canvas>
                                </div>
                                <br />
                                <div style="width:100%;" align="center">
                                    <div class="slider sliderRange ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" style="width:80%;"></div>
                                    <br />
                                    <div style="width:80%;">
                                        <span id="fromdate" class="pull-right">                                                        
                                        </span>
                                        <span id="todate" class="pull-left">                                                        
                                        </span>
                                    </div>
                                </div>                                            
                            </div>
                                        
                            <br /><br />
                            <div class="col-lg-12 text-center">
                                <h3 style="font-family:B Nazanin;">S Curve of Financial Progress</h3>
                                <canvas id="canvasFin" height="500" width="900"></canvas>
                            </div>
                        </div>                                    
                    </div>
                </div>                        
            </div>
        </div><br />        
        <% } %>
    
    <script type="text/javascript">
        $(".sliderRange").slider({
            range: true,
            min: 0,
            max: 98,
            values: [0, 99],
            slide: function (event, ui) {                
                PP_Phys_SCurve(ui.values[0], ui.values[1]);
            }
        });
    </script>
        
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
</asp:Content>
