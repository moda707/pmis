<%@ Page Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="Human_Resource.aspx.cs" Inherits="Project_Management_Information_System1._0.Human_Resource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Human Resources</title>
    <script src="js/Chart.js" type="text/javascript"></script>
    <script src="js/Chart.StackedBar.js" type="text/javascript"></script>
    <script src="js/jQuery.print.js" type="text/javascript"></script>
    
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
                    <li><a href="Project_Progress.aspx"><i class="fa fa-signal fa-fw"></i> Project Progress </a></li>
                    <%  } if (SI.Human_Resource != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                  <li class="active"><a><i class="fa fa-sitemap fa-fw"></i> Resources <span class="fa fa-chevron-down"></span></a>
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
                <h3>Human Resource</h3>
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

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Submitted Reports</h2>
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
                        <div style="max-height:400px; overflow-x:hidden; overflow-y:scroll;">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th style="width:5%;">
                                        #
                                    </th>
                                    <th>
                                        Title
                                    </th>
                                    <th style="width:10%;">
                                    
                                    </th>
                                    <th style="width:10%;">
                                
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
        </div><br />

        <% if (SI.Human_Resource == Project_Management_Information_System1._0.Access_Type.Edit_1)
            { %>
        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Data Entry</h2>
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
                        <ul class="list-group" id="ControlContainer01" runat="server">
                            <li class="list-group-item form-inline text-center">
                                <span>Date : </span>
                                <asp:TextBox CssClass="form-control" ID="txtTDate" runat="server"></asp:TextBox>
                            </li>
                            <li class="list-group-item text-center">
                                <span class="text-center" style="font-weight:bold;">Project</span>
                                <div class="form-inline" style="padding-top:10px;">
                                    <span>P1 : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtLine3" runat="server"></asp:TextBox>
                                    <span style="padding-right:50px;">P2 : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtLine2" runat="server"></asp:TextBox>
                                    <span style="padding-right:50px;">P3 : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtOtherP" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item text-center">
                                <span class="text-center" style="font-weight:bold;">Type</span>
                                <div class="form-inline" style="padding-top:10px;">
                                    <span>T1 : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtRasmi" runat="server"></asp:TextBox>
                                    <span style="padding-right:50px;">T2 : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtGharardaadi" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-inline" style="padding-top:10px;">
                                    <span>T3 : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtVazife" runat="server"></asp:TextBox>
                                    <span style="padding-right:50px;">T4 : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtSaati" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item text-center">
                                <span class="text-center" style="font-weight:bold;">Education</span>
                                <div class="form-inline" style="padding-top:10px;">
                                    <span>PhD : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtEdu_PhD" runat="server"></asp:TextBox>
                                    <span style="padding-right:50px;">Master : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtEdu_Master" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-inline" style="padding-top:10px;">
                                    <span>Bachelor : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtEdu_Bachelor" runat="server"></asp:TextBox>
                                    <span style="padding-right:50px;">Diploma : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtEdu_Diploma" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-inline" style="padding-top:10px;">
                                    <span>Cycle : </span>
                                    <asp:TextBox CssClass="form-control" ID="txtEdu_Cycle" runat="server"></asp:TextBox>
                                </div>
                            </li>
                            <li class="list-group-item text-center">
                                <asp:Button CssClass="btn btn-default" ID="btnClear" runat="server" Font-Names="Tahoma" Text="Clear" />
                                <asp:Button CssClass="btn btn-success" ID="btnSave" runat="server" Text="Save" Font-Names="Tahoma" onclick="btnSave_Click" />                    
                            </li>                    
                        </ul>
                    </div>
                </div>                        
            </div>
        </div><br />

        <% } %>

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
                    <div class="portlet-body" id="pb03">
                        <ul class="list-group">
                            <li class="list-group-item form-inline">
                                <span>Based on Report : </span>
                                <asp:DropDownList CssClass="form-control" ID="dpRPList1" runat="server" Font-Names="Tahoma" Font-Size="9pt">
                            
                                </asp:DropDownList>
                                <button id="btnMakeReport" runat="server" class="btn btn-info" onserverclick="btnMakeRep_Click">Show <span class="glyphicon glyphicon-filter"></span></button>

                                <a id="btnGotoExcel1" runat="server" onserverclick="btnGotoExcel1_Click" class="btn btn-default pull-right"><span class="glyphicon table"></span></a>
                            </li>
                            <li class="list-group-item text-center" id="dvRM">
                                <table class="table table-bordered" cellpadding="0" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th colspan="2" style="width:40%;" class="text-center">
                                                Description
                                            </th>
                                            <th style="width:10%;" class="text-center">
                                                Amount
                                            </th>
                                            <th style="width:10%;" class="text-center">
                                                Percent
                                            </th>
                                            <th style="width:40%;" class="text-center">
                                                Charts
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="vertical-align:middle; width:10%;">
                                                Projects
                                            </td>
                                            <td colspan="3" style="vertical-align:middle;">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <td>
                                                            P2
                                                        </td>
                                                        <td style="width:5px;" id="CLine2" runat="server"></td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblLine2C" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblLine2R" style="font-weight:bold;"></span>
                                                        </td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            P1
                                                        </td>
                                                        <td style="width:5px;" id="CLine3" runat="server"></td>                                                
                                                        <td>
                                                            <span runat="server" id="lblLine3C" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblLine3R" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            P3
                                                        </td>
                                                        <td style="width:5px;" id="CLineOther" runat="server"></td>                                                
                                                        <td>
                                                            <span runat="server" id="lblLineOtherC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblLineOtherR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            Total
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblProjTC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            100%
                                                        </td>                                                
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="vertical-align:middle">
                                                <canvas id="canvasProject" height="150px" width="300px"></canvas>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align:middle">
                                                Type
                                            </td>
                                            <td colspan="3" style="vertical-align:middle;">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <td>
                                                            T1
                                                        </td>
                                                        <td style="width:5px;" id="CRasmi" runat="server"></td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblRasC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblRasR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            T2
                                                        </td>
                                                        <td style="width:5px;" id="CGharardadi" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblGharC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblGharR" style="font-weight:bold;"></span>
                                                        </td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            T3
                                                        </td>
                                                        <td style="width:5px;" id="CVazife" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblVazC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblVazR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            T4
                                                        </td>
                                                        <td style="width:5px;" id="CSati" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblSatC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblSatR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            Total
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblOzvTC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            100%
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="vertical-align:middle">
                                                <canvas id="canvasOzv" height="150px" width="300px"></canvas>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align:middle">
                                                Education
                                            </td>
                                            <td colspan="3" style="vertical-align:middle;">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <td>
                                                            Cycle
                                                        </td>
                                                        <td style="width:5px;" id="CCycle" runat="server"></td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblCyclC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblCyclR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Diploma
                                                        </td>
                                                        <td style="width:5px;" id="CDiplom" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblDipC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblDipR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Bachelor
                                                        </td>
                                                        <td style="width:5px;" id="CBachelor" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblBachC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblBachR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Master
                                                        </td>
                                                        <td style="width:5px;" id="Cmaster" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblMasterC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblMasterR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            PhD
                                                        </td>
                                                        <td style="width:5px;" id="CPhD" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblPhDC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblPhDR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            Total
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblEduTC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            100%
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="vertical-align:middle;">
                                                <canvas id="canvasEdu" height="150px" width="300px"></canvas>
                                            </td>
                                        </tr>                                
                                    </tbody>                            
                                </table>
                            </li>                                        
                            <li class="list-group-item text-center">
                                <a class="btn btn-default pull-right" onclick="javascript:PrintP('dvChart2');"><span class="glyphicon glyphicon-print"></span></a>
                                <div id="dvChart2" style="text-align:center;">
                                    <div class="form-inline">
                                    <span>From: </span>
                                        <asp:DropDownList CssClass="form-control" ID="dpFromDate" runat="server">
                                    
                                        </asp:DropDownList>
                                        <span style="padding-right:15px;"> To :</span>
                                        <asp:DropDownList CssClass="form-control" ID="dpToList" runat="server">
                                    
                                        </asp:DropDownList>
                                        <span style="padding-right:15px;">Based on:</span>
                                            <asp:DropDownList CssClass="form-control" ID="dpHRType" runat="server">
                                                <asp:ListItem Value="0" Selected="True">Projects</asp:ListItem>
                                                <asp:ListItem Value="1">Type</asp:ListItem>
                                                <asp:ListItem Value="2">Education</asp:ListItem>
                                            </asp:DropDownList>
                                        <button id="btnDo01" runat="server" class="btn btn-info" onserverclick="btnDo01_Click" >Show <span class="glyphicon glyphicon-signal"></span></button>
                                    </div><br />
                                    <div style="text-align:center; width:100%;">
                                        <%  = NavContent %>
                                    </div>
                                    <br />
                                    <canvas id="canvas2" height="200px" width="400px"></canvas>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>                        
            </div>
        </div><br />

    </div>

    <span id="chartscript02" runat="server" style="display:block;"></span>

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
