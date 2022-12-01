<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="Project_Management_Information_System1._0.DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Project Management Information System (PMIS)</title>    
    <script src="js/MJScript.js" type="text/javascript"></script>    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title">
                  <img src="images/logo-01.png" style="width:45px; height:30px;" /><span style="margin-left:20px;">PMIS MODA</span></a>
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
                    <li class="active"><a href="Dashboard.aspx"><i class="fa fa-tachometer fa-fw"></i> Dashboard </a></li>

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
                    <li><a href="Project_Progress.aspx"><i class="fa fa-signal fa-fw"></i> Project Progress </a></li>
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
        <div class="row tile_count">
            <div class="alert alert-info" role="alert">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <span class="center"><strong>Welcome to MODA PMIS</strong></span>
                <b>Dashboard:</b>
                <ul>                    
                    <li>
                        This system collects all the Financial, Resources, Project Progress, and etc.
                    </li>
                    <li>
                        MODA PMIS has a strong DataBase can record, classify, process and return huge amount of information for every projects in a holding.
                    </li>
                    <li>
                        Here you can find some brief reports on main sectors of the system.
                    </li>
                    <li>
                        <b>Human resources:</b> Illustrates the chart of number of human resources in use based on the last information. This report is classified by the type of the people who are working in current project.
                    </li>
                    <li>
                        <b>Equipments:</b> Shows the amount of Equipments in use categorised by their project.
                    </li>
                    <li>
                        <b>Financial Statements:</b> Presents the last status of the financial statements of the projects.
                    </li>
                    <li>
                        <b>Revenue & Costs:</b> Shows the amount of total revenue and cost of project with a graph.
                    </li>
                    <li>
                        <b>Progress:</b> Illustrates the Physical progress of the project and compare it with the baseline of project for last 5 months.
                    </li>
                    <li>
                        Press <i>more</i> to see in detail information.
                    </li>
                </ul>
            </div>

            <%if (SI.DashBoard != Project_Management_Information_System1._0.Access_Type.None)
                { %>            
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-12 tile">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Human Resource: <% = HRTotal%></h2><span style="font-size:smaller; margin-left:5px;">persons</span>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>                      
                    </div>
                    <div class="x_content">
                        <canvas id="chartHR"></canvas>
                        <a class="dviewmore" href="Human_Resource.aspx" style="float:right;">More <i class="glyphicon glyphicon-chevron-right"></i></a>                                
                    </div>                       
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-12 tile">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Total Equipments: <% = EQTotal%></h2><span style="font-size:smaller; margin-left:5px;">items</span>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>                      
                    </div>
                    <div class="x_content">
                        <canvas id="chartEQ"></canvas>
                        <a class="dviewmore" href="Human_Resource.aspx" style="float:right;">More <i class="glyphicon glyphicon-chevron-right"></i></a>                                
                    </div>                    
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-12 tile">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Financial Statements</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>                      
                    </div>
                    <div class="x_content">
                        <table style="width:100%;" class="description table-bordered">
                            <tr>
                                <td style="text-align:center;">
                                    Sent to Consultant<br /> No. <% = CSNumber%>
                                </td>
                                <td style="padding-left:10px;">
                                    <span><% = CSRial%> $</span>
                                    <br />
                                    <span><% = CSEuro%> €</span>                                        
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">
                                    Confirmed by Consultant<br />No. <% = CCNumber%>
                                </td>
                                <td style="padding-left:10px;">
                                    <span><% = CCRial%> $</span>
                                    <br />
                                    <span><% = CCEuro%> €</span>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">
                                    Confirmed by Employer<br />No. <% = TCNumber%>
                                </td>
                                <td style="padding-left:10px;">
                                    <span><% = TCRial%> $</span>
                                    <br />
                                    <span><% = TCEuro%> €</span>                                        
                                </td>
                            </tr>
                        </table>
                    </div>
                    <a class="dviewmore" href="Statement_M.aspx" style="float:right;">More <i class="glyphicon glyphicon-chevron-right"></i></a>                    
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-12 tile">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Revenue & Cost</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>                      
                    </div>
                    <div class="x_content">
                        Gross Revenue: <% = InCome%> R<br />
                        Cost: <% = OutCome%> R<br />
                        -------------------------------<br />
                        Gross Profit: <span dir="ltr"><% = Profit%></span> R
                    </div>                    
                    <a class="dviewmore" href="Finance_Management.aspx" style="float:right;">More <i class="glyphicon glyphicon-chevron-right"></i></a>                  
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-12 tile">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Progress</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>                      
                    </div>
                    <div class="x_content">
                        Actual: <% = PPPAct%>%<br />
                        Schedule: <% = PPPPlan%>%<br />
                        ----------------<br />                                
                        Deviation: <span dir="ltr"><% = PPPDiff%></span>%                         
                        <canvas id="chartPPP"></canvas>
                        <a class="dviewmore" href="Project_Progress.aspx" style="float:right;">More <i class="glyphicon glyphicon-chevron-right"></i></a>                        
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>

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
