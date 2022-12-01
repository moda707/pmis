<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="TarazJari_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.TarazJari_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Current Account</title>

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
                      <li class="active"><a><i class="fa fa-money fa-fw"></i> Financial <span class="fa fa-chevron-down"></span></a>
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

        <% if ((int)SI.TarazJari <= (int)Project_Management_Information_System1._0.Access_Type.View_1)
            { %>

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>List</h2>
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
                        <div class="Scroller">
                        <table class="table" style="font-size:12pt;">
                            <thead>
                                <tr>
                                    <th>
                                        #
                                    </th>
                                    <th>
                                        Title
                                    </th>
                                    <th style="width:10%">
                                    
                                    </th>
                                    <th style="width:10%">
                                
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <% = TJContent%>                            
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>                        
            </div>
        </div><br />

        <% }
        if ((int)SI.TarazJari <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
            {  %>

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Submit new Report</h2>
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
                        <div class="form-inline">
                            <input style="font-size:12pt;" type="button" value="Browse" class="btn btn-default" onclick="javascript:$('#ctl00_ContentPlaceHolder1_fu1').click();" />
                            <input type="text" class="form-control" readonly="readonly" id="txtFileAddress" runat="server" />
                            <div style="display:none;">
                                <asp:FileUpload ID="fu1" runat="server" onchange="javascript:SetAddress();" />                        
                            </div>
                            <span style="padding-right:20px;">
                                Sheet Name : 
                            </span>
                            <input class="form-control" type="text" id="txtSheetName" runat="server" value="tarazjari" />
                            <span style="padding-right:20px;">
                                Date : 
                            </span>
                            <input class="form-control" type="text" id="txtDate" runat="server" value="1394/05/05" />
                            <button style="font-size:12pt; padding-right:20px;" class="btn btn-success" id="btnLoadSave" runat="server" onserverclick="btnLoadSave_Click">Load and Save <span class="glyphicon glyphicon-floppy-open"></span></button>
                        </div>
                        <div class="text-center alert alert-danger" id="lblErr" runat="server" style="display:none;">
                        
                        </div>
                    </div>
                </div>                        
            </div>
        </div><br />
        <% } %>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" style="font-family:B Nazanin; font:14pt;">Description</h4>
                    </div>
                    <div class="modal-body">
                    <iframe id="dvframe" scrolling="yes" height="400px" width="100%" src="" frameborder="0" class="Scroller">
                                
                    </iframe>
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                            
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
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
