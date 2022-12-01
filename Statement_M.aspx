<%@ Page Language="C#" MasterPageFile="~/Class2.Master" AutoEventWireup="true" CodeBehind="Statement_M.aspx.cs" Inherits="Project_Management_Information_System1._0.Statement_M" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Statements</title>    
    <script src="js/MJScript.js" type="text/javascript"></script>    
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
                    <li ><a href="Dashboard.aspx"><i class="fa fa-tachometer fa-fw"></i> Dashboard </a></li>

                    <%  } if (SI.Statement_M != Project_Management_Information_System1._0.Access_Type.None)
                        { %>
                    <li class="active"><a><i class="fa fa-desktop fa-fw"></i> Statements <span class="fa fa-chevron-down"></span></a>
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

        <% if ((int)SI.Statement_M <= (int)Project_Management_Information_System1._0.Access_Type.View_2)
            { %>

        <div class="row">
            <div class="x_panel col-lg-12">
                <div class="x_title">
                    <h2>List of Statements</h2>
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
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>
                                            No.    
                                        </th>
                                        <th>
                                            Status
                                        </th>
                                        <th>
                                            Date of submit
                                        </th>
                                        <th>
                                            Date of statement
                                        </th>
                                        <% if (SI.Statement_M == Project_Management_Information_System1._0.Access_Type.Edit_1)
                                        { %>
                                        <th>
                                                        
                                        </th>
                                        <%} %>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% = STMListContent%>
                                </tbody>
                            </table>                                        
                        </div>
                    </div>
                </div>                        
            </div>
        </div><br />

        <% } if (SI.Statement_M == Project_Management_Information_System1._0.Access_Type.Edit_1)
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
                        <div id="pb02">
                            <div class="portlet-body">
                                <div style="font-size:12pt;">
                                    <div class="form-inline text-center">
                                        <div class="pull-left">
                                                <span>No. : </span>
                                                <input type="text" id="txtSNumber" runat="server" class="form-control" style="width:50px;font-size:13pt;" readonly="readonly" />
                                            </div>
                                            <button id="btnaddnewstatement" class="btn btn-success pull-right" runat="server" onserverclick="btnaddnewstatement_Click">Create<span class="glyphicon glyphicon-plus"></span></button>                                            
                                            <span style="padding-right:20px;">Date : </span>
                                            <input type="text" id="txtEDate" runat="server" class="form-control" style="width:150px;font-size:13pt;" />
                                    </div>
                                    
                                    <br />
                                    <div class="panel panel-default">
                                        <div class="panel-heading">Data</div>
                                        <div class="panel-body">
                                            <table class="table table-bordered table-advanced">
                                                <thead>
                                                    <tr>
                                                        <th colspan="4">
                                                            <span>In progress</span>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                                
                                                        </th>
                                                        <th>
                                                            <span>Periodic</span>
                                                        </th>
                                                        <th>
                                                            <span>Accumulated</span>
                                                        </th>
                                                        <th>
                                                            <span>No./Date Letter</span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>$</td>
                                                        <td><input type="text" id="txtIP_Rial1" runat="server" class="form-control" placeholder="$" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtIP_Rial_C" runat="server" class="form-control" placeholder="Total $" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtIP_Date1" runat="server" class="form-control" placeholder="Date" style="font-size:13pt;" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>€</td>
                                                        <td><input type="text" id="txtIP_Euro1" runat="server" class="form-control" placeholder="€" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtIP_Euro_C" runat="server" class="form-control" placeholder="Total €" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtIP_N" runat="server" class="form-control" placeholder="Letter No." style="font-size:13pt;" /></td>
                                                    </tr>
                                                </tbody>

                                                <thead>
                                                    <tr>
                                                        <th colspan="4">
                                                            <span>Sent to Consultant</span>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                                
                                                        </th>
                                                        <th>
                                                            <span>Periodic</span>
                                                        </th>
                                                        <th>
                                                            <span>Accumulated</span>
                                                        </th>
                                                        <th>
                                                            <span>No./Date Letter</span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>$</td>
                                                        <td><input type="text" id="txtCS_Rial1" runat="server" class="form-control" placeholder="$" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCS_Rial_C" runat="server" class="form-control" placeholder="Total $" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCS_Date1" runat="server" class="form-control" placeholder="Date" style="font-size:13pt;" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>€</td>
                                                        <td><input type="text" id="txtCS_Euro1" runat="server" class="form-control" placeholder="€" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCS_Euro_C" runat="server" class="form-control" placeholder="Total €" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCS_N" runat="server" class="form-control" placeholder="Letter No." style=" font-size:13pt;" /></td>
                                                    </tr>
                                                </tbody>
                                                
                                                <thead>
                                                    <tr>
                                                        <th colspan="4">
                                                            <span>Confirmed by Consultant</span>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                                
                                                        </th>
                                                        <th>
                                                            <span>Periodic</span>
                                                        </th>
                                                        <th>
                                                            <span>Accumulated</span>
                                                        </th>
                                                        <th>
                                                            <span>No./Date Letter</span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>$</td>
                                                        <td><input type="text" id="txtCC_Rial1" runat="server" class="form-control" placeholder="$" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCC_Rial_C" runat="server" class="form-control" placeholder="Total $" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCC_Date1" runat="server" class="form-control" placeholder="Date" style="font-size:13pt;" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>€</td>
                                                        <td><input type="text" id="txtCC_Euro1" runat="server" class="form-control" placeholder="€" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCC_Euro_C" runat="server" class="form-control" placeholder="Total €" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtCC_N" runat="server" class="form-control" placeholder="Letter No." style=" font-size:13pt;" /></td>
                                                    </tr>
                                                </tbody>

                                                <thead>
                                                    <tr>
                                                        <th colspan="4">
                                                            <span>Confirmed by Employer</span>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                                
                                                        </th>
                                                        <th>
                                                            <span>Periodic</span>
                                                        </th>
                                                        <th>
                                                            <span>Accumulated</span>
                                                        </th>
                                                        <th>
                                                            <span>No./Date Letter</span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>$</td>
                                                        <td><input type="text" id="txtTC_Rial1" runat="server" class="form-control" placeholder="$" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtTC_Rial_C" runat="server" class="form-control" placeholder="Total $" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtTC_Date1" runat="server" class="form-control" placeholder="Date" style="font-size:13pt;" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>€</td>
                                                        <td><input type="text" id="txtTC_Euro1" runat="server" class="form-control" placeholder="€" style="font-size:13pt;" dir="ltr" /> </td>
                                                        <td><input type="text" id="txtTC_Euro_C" runat="server" class="form-control" placeholder="Total €" style="font-size:13pt;" dir="ltr" /></td>
                                                        <td><input type="text" id="txtTC_N" runat="server" class="form-control" placeholder="Letter No." style="font-size:13pt;" /></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                        
                                    <div class="panel panel-default">
                                        <div class="panel-heading">Payments & Recietes</div>
                                        <div class="panel-body text-center">
                                            <table class="table table-advanced table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            
                                                        </th>
                                                        <th>
                                                            <span>Incomming</span>
                                                        </th>
                                                        <th>
                                                            <span>Insurance</span>
                                                        </th>
                                                        <th>
                                                            <span>Tax</span>
                                                        </th>
                                                        <th>
                                                            <span>Other</span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <span>$</span>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtPaidRial" runat="server" class="form-control" placeholder="Income" style="font-size:13pt;" dir="ltr"/>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtInsuranceRial" runat="server" class="form-control" placeholder="Insurance" style="font-size:13pt;" dir="ltr"/>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtTaxRial" runat="server" class="form-control" placeholder="Tax" style="font-size:13pt;" dir="ltr"/>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtGPerformanceRial" runat="server" class="form-control" placeholder="Other" style="font-size:13pt;" dir="ltr"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <span>€</span>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtPaidEuro" runat="server" class="form-control" placeholder="Euro" style="font-size:13pt;" dir="ltr" />
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtInsuranceEuro" runat="server" class="form-control" placeholder="Insurance" style="font-size:13pt;" dir="ltr"/>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtTaxEuro" runat="server" class="form-control" placeholder="Tax" style="font-size:13pt;" dir="ltr"/>
                                                        </td>
                                                        <td>
                                                            <input type="text" id="txtGPerformanceEuro" runat="server" class="form-control" placeholder="Other" style="font-size:13pt;" dir="ltr"/>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                                <thead>
                                                    <tr>
                                                        <th>
                                                            
                                                        </th>
                                                        <th>
                                                            <span>X1</span>
                                                        </th>
                                                        <th>
                                                            <span>X2</span>
                                                        </th>
                                                        <th>
                                                                
                                                        </th>
                                                        <th>
                                                                
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                        <tr>
                                                            <td>
                                                                <span>$</span>
                                                            </td>
                                                            <td>
                                                                <input type="text" id="txtPreReceivedRial" runat="server" class="form-control" placeholder="X1" style="font-size:13pt;" dir="ltr"/>
                                                            </td>
                                                            <td>
                                                                <input type="text" id="txtResolutionRial" runat="server" class="form-control" placeholder="X2" style="font-size:13pt;" dir="ltr"/>
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <span>€</span>
                                                            </td>
                                                            <td>
                                                                <input type="text" id="txtPreReceivedEuro" runat="server" class="form-control" placeholder="X1" style="font-size:13pt;" dir="ltr"/>
                                                            </td>
                                                            <td>
                                                                <input type="text" id="txtResolutionEuro" runat="server" class="form-control" placeholder="X2" style="font-size:13pt;" dir="ltr"/>
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                            </table>                                                
                                        </div>                                            
                                    </div>
                                        
                                </div>
                            </div>
                            
                            <div class="panel-footer">
                                <div class="form-inline text-center">
                                    <button class="btn btn-success" id="btnSave" runat="server" onserverclick="btnSave_Click">Save <i class="glyphicon glyphicon-floppy-disk"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><br />

        <% } if ((int)SI.Statement_M <= (int)Project_Management_Information_System1._0.Access_Type.View_1)
           { %>

            <div class="row">
                <div class="x_panel col-lg-12">
                    <div class="x_title">
                        <h2>Report - Current Status</h2>
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
                            <table class="table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                        <th colspan="2" style="text-align:center;">
                                            In progress
                                        </th>
                                        <th colspan="2" style="text-align:center;">
                                            Sent to Consultant
                                        </th>
                                        <th colspan="2" style="text-align:center;">
                                            Confirmed by Consultant
                                        </th>
                                        <th colspan="2" style="text-align:center;">
                                            Confirmed by Employer
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="text-align:center; width:12.5%;">
                                            $
                                        </th>
                                        <th style="text-align:center; width:12.5%;">
                                            €
                                        </th>
                                        <th style="text-align:center; width:12.5%;">
                                            $
                                        </th>
                                        <th style="text-align:center; width:12.5%;">
                                            €
                                        </th>
                                        <th style="text-align:center; width:12.5%;">
                                            $
                                        </th>
                                        <th style="text-align:center; width:12.5%;">
                                            €
                                        </th>
                                        <th style="text-align:center; width:12.5%;">
                                            $
                                        </th>
                                        <th style="text-align:center; width:12.5%;">
                                            €
                                        </th>                            
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="text-align:center;">
                                            <span id="txtIPR" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtIPE" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCSR" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCSE" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCCR" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCCE" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtTCR" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtTCE" runat="server" style="font-weight:bold;" dir="ltr"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align:center;">
                                            <span id="txtIPC" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td colspan="2" style="text-align:center;">
                                            <span id="txtCSC" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td colspan="2" style="text-align:center;">
                                            <span id="txtCCC" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td colspan="2" style="text-align:center;">
                                            <span id="txtTCC" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;">
                                            Letter No.
                                        </td>
                                        <td style="text-align:center;">
                                            Date
                                        </td>
                                        <td style="text-align:center;">
                                            Letter No.
                                        </td>
                                        <td style="text-align:center;">
                                            Date
                                        </td>
                                        <td style="text-align:center;">
                                            Letter No.
                                        </td>
                                        <td style="text-align:center;">
                                            Date
                                        </td>
                                        <td style="text-align:center;">
                                            Letter No.
                                        </td>
                                        <td style="text-align:center;">
                                            Date
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;">
                                            <span id="txtIPN" runat="server"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtIPD" runat="server"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCSN" runat="server"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCSD" runat="server"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCCN" runat="server"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCCD" runat="server"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtTCN" runat="server"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtTCD" runat="server"></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                           
                        </div>
                    </div>
                </div>
            </div><br />

        <% } if ((int)SI.Statement_M <= (int)Project_Management_Information_System1._0.Access_Type.View_1)
           { %>
            
            <div class="row">
                <div class="x_panel col-lg-12">
                    <div class="x_title">
                        <h2>Report - Accumulated Performance</h2>
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
                        <div class="portlet-body" id="pb04">                            
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th colspan="2" style="text-align:center;">
                                            Claimed
                                        </th>
                                        <th colspan="2" style="text-align:center;">
                                            Confirmed by Consultant
                                        </th>
                                        <th colspan="2" style="text-align:center;">
                                            Confirmed by Employer
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="text-align:center;">
                                            $
                                        </th>
                                        <th style="text-align:center;">
                                            €
                                        </th>
                                        <th style="text-align:center;">
                                            $
                                        </th>
                                        <th style="text-align:center;">
                                            €
                                        </th>
                                        <th style="text-align:center;">
                                            $
                                        </th>
                                        <th style="text-align:center;">
                                            €
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="text-align:center;">
                                            <span id="txtCClaimRial" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCClaimEuro" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCConConfirmRial" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCConConfirmEuro" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCTMConfirmRial" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                        <td style="text-align:center;">
                                            <span id="txtCTMConfirmEuro" runat="server" style="font-weight:bold;"></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                                    
                        </div>
                    </div>
                </div>
            </div><br />

            <div class="row">
                <div class="x_panel col-lg-12">
                    <div class="x_title">
                        <h2>Chart</h2>
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
                        <div class="portlet-body" id="pb05">
                            <div style="text-align:center;">
                                <div class="form-inline">
                                    <% = NavContent %>                                            
                                </div><br />
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                        <div class="form-inline">
                                            <span>From: </span>
                                                <asp:DropDownList CssClass="form-control" ID="dpStdFrom" runat="server">
                                                            
                                                </asp:DropDownList>
                                            <span style="padding-right:15px;">To: </span>
                                                <asp:DropDownList CssClass="form-control" ID="dpStdTo" runat="server">
                                                            
                                                </asp:DropDownList>
                                            <button id="btnStdDo" runat="server" class="btn btn-info" onserverclick="btnStdDo_Click" >Show <span class="glyphicon glyphicon-signal"></span></button>
                                        </div>
                                        <span class="pull-right">Thousand $</span>
                                        <canvas id="canvasSTRC"></canvas>
                                    </div>
                                    <div class="col-lg-12 col-sm-12">
                                        <span class="pull-right">Thousand $</span>
                                        <canvas id="canvasSTRP"></canvas>
                                    </div>
                                    <div class="col-lg-12 col-sm-12">
                                        <span class="pull-right">Thousand €</span>
                                        <canvas id="canvasSTEC"></canvas>
                                    </div>
                                    <div class="col-lg-12 col-sm-12">
                                        <span class="pull-right">Thousand €</span>
                                        <canvas id="canvasSTEP"></canvas>
                                    </div>                                            
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><br />
         
        <% } %>

    
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