<%@ Page Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="Equipment_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.Equipment_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Equipments</title>
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
                <h3>Equipments</h3>
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

        <div class="alert alert-info alert-dismissible fade show" role="alert">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
                    test error message
        </div>

        <% if ((int)SI.Equipment <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
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
                        <div class="form-inline">
                            <% if ((int)SI.Equipment <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
                                { %>
                            <button type="button" data-toggle="modal" data-target="#myModalDate" class="btn btn-success pull-right">Create &nbsp;&nbsp;<i class="glyphicon glyphicon-plus"></i></button>
                            <% } %>
                            <span>Report based on Date : </span>
                            <asp:DropDownList ID="dpReportListDate" runat="server" CssClass="form-control">
                                            
                            </asp:DropDownList>
                            <button id="btnLoadEq" runat="server" onserverclick="btnLoadEq_Click" class="btn btn-info">Show <i class="glyphicon glyphicon-circle-arrow-right"></i></button>
                        </div><br />

                        <table class="table table-advanced text-center" style="font-size:12pt;">
                            <thead>
                            <tr>
                                <th class="text-center" style="width:20%;">Name</th>                                          
                                <th class="text-center" style="width:20%;">Project</th>
                                <th class="text-center" style="width:20%;">Owner</th>
                                <th class="text-center" style="width:20%;">Type</th>
                                <th class="text-center" style="width:10%;">Amount</th>
                                <% if ((int)SI.Equipment <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
                                    { %>
                                <th style="width:5%;"></th>
                                <th style="width:5%;"></th>
                                <% } %>
                            </tr>
                            </thead>
                            <tbody style="font-size:14pt;">
                            <tr>
                                <td colspan="7">
                                    <div class="Scroller">
                                    <% = TContent%> 
                                    </div>   
                                </td>
                            </tr>                                                                           
                            </tbody>
                            <% if ((int)SI.Equipment <= (int)Project_Management_Information_System1._0.Access_Type.Edit_1)
                                    { %>
                            <tfoot id="EntryBox" runat="server">
                            <tr style="border-style:dashed; border-width:2px;">
                                <th>
                                    <input type="text" id="txtEqItemCode1" runat="server" style="display:none;" />
                                    <asp:DropDownList CssClass="form-control" ID="dpFName" runat="server" Font-Names="Tahoma" Font-Size="9pt">
                                    </asp:DropDownList>
                                </th>                                            
                                <th>
                                    <asp:DropDownList CssClass="form-control" ID="dpFProject" runat="server" Font-Names="Tahoma" Font-Size="9pt">                                                    
                                        <asp:ListItem Value="0">P2</asp:ListItem>
                                        <asp:ListItem Value="1">P1</asp:ListItem>
                                        <asp:ListItem Value="2">P3</asp:ListItem>
                                    </asp:DropDownList>
                                </th>
                                <th>
                                    <asp:DropDownList CssClass="form-control" ID="dpFOwner" runat="server" Font-Names="Tahoma" Font-Size="9pt">
                                                    
                                        <asp:ListItem Value="0">X1</asp:ListItem>
                                        <asp:ListItem Value="1">X2</asp:ListItem>     
                                        <asp:ListItem Value="2">X3</asp:ListItem>  
                                    </asp:DropDownList>
                                </th>
                                <th>
                                    <asp:DropDownList CssClass="form-control" ID="dpFType" runat="server" Font-Names="Tahoma" Font-Size="9pt">                                                    
                                        <asp:ListItem Value="0">T1</asp:ListItem>
                                        <asp:ListItem Value="1">T2</asp:ListItem>     
                                        <asp:ListItem Value="2">T3</asp:ListItem>
                                        <asp:ListItem Value="3">T4</asp:ListItem>
                                        <asp:ListItem Value="4">T5</asp:ListItem>
                                        <asp:ListItem Value="5">T6</asp:ListItem>
                                    </asp:DropDownList>
                                </th>
                                <th>
                                    <asp:TextBox ID="txtFCount" runat="server" CssClass="form-control" Font-Names="Tahoma" Font-Size="9pt"></asp:TextBox>
                                </th>
                                            
                                <th colspan="2">
                                    <div class="form-inline">
                                        <button class="btn btn-default" type="button" onclick="javascript:EqClearForm();"><span class="glyphicon glyphicon-file"></span></button>
                                        <button class="btn btn-info" id="btnSave" runat="server" onserverclick="btnSave_Click"><i class="glyphicon glyphicon-floppy-disk"></i></button>                                                    
                                    </div>
                                </th>
                                            
                            </tr>
                            </tfoot>
                            <% } %>
                        </table>                                    
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
                                <asp:DropDownList CssClass="form-control" ID="dpRPList1" runat="server">
                            
                                </asp:DropDownList>
                                <button id="btnMakeReport" runat="server" class="btn btn-info" onserverclick="btnMakeRep_Click">Show <span class="glyphicon glyphicon-filter"></span></button>

                                        
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
                                                            P1
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
                                                            P2
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
                                                        <td style="width:5px;" id="CMoasese" runat="server"></td>                                                
                                                        <td>
                                                            <span runat="server" id="lblMoaseseC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblMoaseseR" style="font-weight:bold;"></span>
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
                                                Owner
                                            </td>
                                            <td colspan="3" style="vertical-align:middle;">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <td>
                                                            X1
                                                        </td>
                                                        <td style="width:5px;" id="CGhorb" runat="server"></td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblGhorbC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblGhorbR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            X2
                                                        </td>
                                                        <td style="width:5px;" id="CEstijari" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblEstijariC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblEstijariR" style="font-weight:bold;"></span>
                                                        </td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            X3
                                                        </td>
                                                        <td style="width:5px;" id="CNiro" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblNiroC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblNiroR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>                                                            
                                                    <tr>
                                                        <td colspan="2">
                                                            Total
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblMalekTC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            100%
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="vertical-align:middle">
                                                <canvas id="canvasMalek" height="150px" width="300px"></canvas>
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
                                                        <td style="width:5px;" id="CHMec" runat="server"></td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblHMecC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td style="width:20%;">
                                                            <span runat="server" id="lblHMecR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            T2
                                                        </td>
                                                        <td style="width:5px;" id="CHGen" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblHGenC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblHGenR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                           T3
                                                        </td>
                                                        <td style="width:5px;" id="CRaah" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblRaahC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblRaahR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            T4
                                                        </td>
                                                        <td style="width:5px;" id="CSangin" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblSanginC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblSanginR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            T5
                                                        </td>
                                                        <td style="width:5px;" id="CSabok" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblSabokC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblSabokR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            T6
                                                        </td>
                                                        <td style="width:5px;" id="CTajhizat" runat="server"></td>
                                                        <td>
                                                            <span runat="server" id="lblTajhizatC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblTajhizatR" style="font-weight:bold;"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            Total
                                                        </td>
                                                        <td>
                                                            <span runat="server" id="lblTypeTC" style="font-weight:bold;"></span>
                                                        </td>
                                                        <td>
                                                            100%
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="vertical-align:middle;">
                                                <canvas id="canvasType" height="150px" width="300px"></canvas>
                                            </td>
                                        </tr>                                
                                    </tbody>                            
                                </table>
                            </li>                                        
                        </ul>
                    </div>
                </div>                        
            </div>
        </div><br />
    </div>

    
            

                    

    <div class="modal fade" id="myModalDate" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Create New</h4>
            </div>
            <div class="modal-body">
            <div class="form-inline" style="text-align:center; vertical-align:middle;" align="center">
                <span>Select Date : </span><input class="pdate form-control" type="text" id="txtCreatDate" runat="server" style="direction:ltr; width:150px; height:30px;" />
            </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancle</button>
            <button type="button" id="btnDateSelect" runat="server" onserverclick="btnDateSelect_Click" class="btn btn-primary">Select</button>
            </div>
        </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    
     
        

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
    
    
