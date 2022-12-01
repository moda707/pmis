<%@ Page Title="" Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="Finance_Management.aspx.cs" Inherits="Project_Management_Information_System1._0.Finance_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Financial</title>    
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
                <h3>Financial</h3>
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

        <% if (SI.Statement_M != Project_Management_Information_System1._0.Access_Type.None)
            { %>
        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Costs</h2>
                    <ul class="nav navbar-right panel_toolbox">                        
                        <li><a class="collapse-link"><i id="ifa01" class="fa fa-chevron-up"></i></a></li>
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
                            <span>
                                Based on Current Account:                                  
                            </span>
                            <asp:DropDownList CssClass="form-control" ID="dpTJList1" runat="server" Font-Names="Tahoma" Font-Size="9pt">
                            
                            </asp:DropDownList>
                            <button id="btnSetFilter" runat="server" class="btn btn-info" onserverclick="btnLoadCost_Click">Show <span class="glyphicon glyphicon-filter"></span></button>
                            <a id="ndd" class="btn btn-default pull-right" onclick="javascript:Print('dvprtcost');"><span class="glyphicon glyphicon-print"></span></a>
                        </div><br />
                        <div id="dvprtcost" style="text-align:center;">
                            <table class="table table-bordered">
                                <% = TBCostContent%>                        
                            </table>
                            <canvas id="canvasCost01"></canvas>
                        </div>
                    </div>
                </div>                        
            </div>
        </div><br />

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Debts</h2>
                    <ul class="nav navbar-right panel_toolbox">                        
                        <li><a class="collapse-link"><i id="ifa02" class="fa fa-chevron-up"></i></a></li>
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
                            <span>
                                Based on Current Account: 
                            </span>
                            <asp:DropDownList CssClass="form-control" ID="dpTJList2" runat="server" Font-Names="Tahoma" Font-Size="9pt">
                            
                            </asp:DropDownList>
                            <button id="Button1" runat="server" class="btn btn-info" onserverclick="btnLoadDebt_Click">Show <span class="glyphicon glyphicon-filter"></span></button>
                            <a id="Button2" class="btn btn-default pull-right" onclick="javascript:Print('dvprtdebt');"><span class="glyphicon glyphicon-print"></span></a>
                        </div><br />
                        <div id="dvprtdebt" style="text-align:center;">
                            <table class="table table-bordered" style="overflow:scroll; max-height:500px;">
                                <% = TBDebtContent%> 
                            </table>
                            <canvas id="canvasDebt01"></canvas>
                        </div>
                    </div>
                </div>                        
            </div>
        </div><br />

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Trend of Costs</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i  id="ifa03" class="fa fa-chevron-up"></i></a></li>
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
                                <span>From: </span>
                                    <asp:DropDownList CssClass="form-control" ID="dpCostsFrom" runat="server">
                                        <asp:ListItem Selected="True">2017/01/01</asp:ListItem>                                        
                                        <asp:ListItem>2017/02/01</asp:ListItem>
                                        <asp:ListItem>2017/03/01</asp:ListItem>
                                    </asp:DropDownList>
                                <span style="padding-right:15px;"> To: </span>
                                    <asp:DropDownList CssClass="form-control" ID="dpCostsDoTo" runat="server">
                                        <asp:ListItem>2017/01/01</asp:ListItem>                                        
                                        <asp:ListItem Selected="True">2017/02/01</asp:ListItem>
                                        <asp:ListItem>2017/03/01</asp:ListItem>
                                    </asp:DropDownList>
                                <button id="btnCostsDo" runat="server" class="btn btn-info" onserverclick="btnCostsDo_Click" >Show <span class="glyphicon glyphicon-signal"></span></button>
                            </li>
                            <li class="list-group-item">                            
                                <div style="text-align:center;">
                                    <span class="pull-right">Billion R</span>
                                    <canvas id="canvasCosts"></canvas>
                                </div>
                            </li>                        
                        </ul>
                    </div>
                </div>                        
            </div>
        </div><br />

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Profit & Loss Trend</h2>
                    <ul class="nav navbar-right panel_toolbox">                        
                        <li><a class="collapse-link"><i  id="ifa04" class="fa fa-chevron-up"></i></a></li>
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
                    <div class="portlet-body" id="pb04">
                        <ul class="list-group">                        
                            <li class="list-group-item form-inline">
                                <span>From: </span>
                                    <asp:DropDownList CssClass="form-control" ID="dpprofitfrom" runat="server">
                                        <asp:ListItem Selected="True" Value="0">Begining</asp:ListItem>
                                        <asp:ListItem>2017/01/01</asp:ListItem>
                                        <asp:ListItem>2017/02/01</asp:ListItem>
                                        <asp:ListItem>2017/04/01</asp:ListItem>
                                        <asp:ListItem>2017/05/01</asp:ListItem>
                                        <asp:ListItem>2017/06/01</asp:ListItem>
                                        <asp:ListItem>2017/07/01</asp:ListItem>
                                        <asp:ListItem>2017/08/01</asp:ListItem>
                                        <asp:ListItem>2017/09/01</asp:ListItem>
                                    </asp:DropDownList>
                                <span style="padding-right:15px;"> To: </span>
                                    <asp:DropDownList CssClass="form-control" ID="dprofitto" runat="server">
                                        <asp:ListItem Value="0" Selected="True">End</asp:ListItem>
                                        <asp:ListItem>2017/01/01</asp:ListItem>
                                        <asp:ListItem>2017/02/01</asp:ListItem>
                                        <asp:ListItem>2017/04/01</asp:ListItem>
                                        <asp:ListItem>2017/05/01</asp:ListItem>
                                        <asp:ListItem>2017/06/01</asp:ListItem>
                                        <asp:ListItem>2017/07/01</asp:ListItem>
                                        <asp:ListItem>2017/08/01</asp:ListItem>
                                        <asp:ListItem>2017/09/01</asp:ListItem>
                                    </asp:DropDownList>
                                <button id="btnProfitLoad" runat="server" class="btn btn-info" onserverclick="btnProfitLoad_Click" >Show <span class="glyphicon glyphicon-signal"></span></button>
                            </li>
                            <li class="list-group-item">                            
                                <div style="text-align:center;">
                                    <% = NavContent %>
                                    <span class="pull-right">$</span>
                                    <canvas id="canvasProfit"></canvas>
                                </div>
                            </li>                        
                        </ul>
                    </div>
                </div>                        
            </div>
        </div><br />

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>Trend of Incomes</h2>
                    <ul class="nav navbar-right panel_toolbox">                        
                        <li><a class="collapse-link"><i  id="ifa05" class="fa fa-chevron-up"></i></a></li>
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
                    <div class="portlet-body" id="pb05">
                        <ul class="list-group">
                            <li class="list-group-item form-inline">
                                <span>From: </span>
                                    <asp:DropDownList CssClass="form-control" ID="dpFromDate" runat="server">
                                        <asp:ListItem Selected="True">2017/01/01</asp:ListItem>                                        
                                        <asp:ListItem>2017/02/01</asp:ListItem>
                                        <asp:ListItem>2017/03/01</asp:ListItem>
                                        <asp:ListItem>2017/04/01</asp:ListItem>
                                        <asp:ListItem>2017/05/01</asp:ListItem>
                                        <asp:ListItem>2017/06/01</asp:ListItem>
                                    </asp:DropDownList>
                                <span style="padding-right:15px;">To: </span>
                                    <asp:DropDownList CssClass="form-control" ID="dpToList" runat="server">
                                        <asp:ListItem>2017/01/01</asp:ListItem>                                        
                                        <asp:ListItem>2017/02/01</asp:ListItem>
                                        <asp:ListItem>2017/03/01</asp:ListItem>
                                        <asp:ListItem>2017/04/01</asp:ListItem>
                                        <asp:ListItem>2017/05/01</asp:ListItem>
                                        <asp:ListItem Selected="True">2017/06/01</asp:ListItem>
                                    </asp:DropDownList>
                                <button id="btnDo01" runat="server" class="btn btn-info" onserverclick="btnDo01_Click" >Show <span class="glyphicon glyphicon-signal"></span></button>
                                <button type="button" id="btnAddNewFR" data-toggle="modal" data-target="#myModalNewFR" class="btn btn-info pull-right" onclick="">Add new Financial Income <span class="glyphicon glyphicon-plus"></span></button>
                            </li>
                            <li class="list-group-item">
                                <span class="pull-left">Income in $</span>
                                <span class="pull-right">$</span>
                                <div style="text-align:center;">
                                    <canvas id="canvas1"></canvas>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <span class="pull-left">Income in Euro</span>
                                <span class="pull-right">Euro</span>
                                <div style="text-align:center;">
                                    <canvas id="canvas2"></canvas>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>                        
            </div>
        </div><br />
        <% } %>


    </div>

    <div class="modal fade" id="myModalNewFR" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Record the financial resources</h4>
            </div>
            <div class="modal-body">
            <div class="form-inline" style="vertical-align:middle;">                                    
                <asp:DropDownList CssClass="form-control" ID="dpFRUnit" runat="server" Width="100px">
                    <asp:ListItem Value="0">$</asp:ListItem>
                    <asp:ListItem Value="1">Euro</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList CssClass="form-control" ID="dpFRType" runat="server" Width="200px">
                    <asp:ListItem Value="0">Type 1</asp:ListItem><%--پیش دریافت--%>
                    <asp:ListItem Value="1">Type 2</asp:ListItem><%-- کارکرد --%>
                    <asp:ListItem Value="2">Type 3</asp:ListItem><%-- علی الحساب مصالح --%>
                    <asp:ListItem Value="3">Type 4</asp:ListItem><%-- علی الحساب کارکرد --%>
                    <asp:ListItem Value="4">Type 5</asp:ListItem><%-- مصوبه شورا --%>
                    <asp:ListItem Value="5">Type 6</asp:ListItem><%-- استقراض --%>
                    <asp:ListItem Value="6">Type 7</asp:ListItem><%-- عودت استقراض --%>
                    <asp:ListItem Value="7">Type 8</asp:ListItem><%-- علی الحساب --%>
                    <asp:ListItem Value="8">Type 9</asp:ListItem><%-- مساعدت ملی --%>
                    <asp:ListItem Value="9">Type 10</asp:ListItem><%-- استرداد سپرده --%>
                </asp:DropDownList>
                <asp:TextBox ID="txtNewFRDate" runat="server" CssClass="form-control" Width="200px" placeholder="Date"></asp:TextBox>                                    
            </div><br />
            <div class="form-inline" style="vertical-align:middle;">
                <asp:TextBox ID="txtNewFRDesc" runat="server" CssClass="form-control" Width="200px" placeholder="Description"></asp:TextBox>
                <asp:TextBox ID="txtNewFRAmountRial" runat="server" CssClass="form-control" Width="150px" placeholder="$"></asp:TextBox>
                <asp:TextBox ID="txtNewFRAmountEuro" runat="server" CssClass="form-control" Width="150px" placeholder="Euro"></asp:TextBox>
            </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            <asp:Button ID="btnNewFRAdd" runat="server" CssClass="btn btn-success" Text="Add" OnClick="btnNewFRAdd_Click" />
            </div>
        </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
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
