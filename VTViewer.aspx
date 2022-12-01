<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VTViewer.aspx.cs" Inherits="Project_Management_Information_System1._0.VTViewer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><% = pagetitle %></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/panorama/jquery.fancybox-1.3.1.css" rel="stylesheet" type="text/css" />
    <link href="css/panorama/jquery.panorama.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.panorama.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        var tt = window.innerWidth;
        $("img.panorama").advancedpanorama({
            viewport_width: 1400,
            auto_start: 0,
            start_position: 0
        });
    });
</script>
<script type="text/javascript" src="js/cvi_text_lib.js"></script>
<script type="text/javascript" src="js/jquery.advanced-panorama.js"></script>
<script type="text/javascript" src="js/jquery.flipv.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-1.3.1.pack.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.thickbox').fancybox();
    });
</script>

<style  type="text/css">
	body {
		background: #595959;
		text-align: center;
	}	
	#page {
		text-align: center;
		color: white;
		height:100%;
	}
	
	#page .panorama-viewport {		
		margin-left: auto;
		margin-right: auto;
		margin-top: auto;
		margin-bottom:auto;
	}
	.NavigatorBox
	{
	    position:absolute; 
	    width:300px; 
	    height:200px; 
	    z-index: 9999; 
	    top:530px; 
	    left:10px; 
	    cursor:crosshair;
	    opacity:0.6;
	    border:1px solid black;
	}
	
	.NavigatorBox:hover	
	{
	    opacity:0.9;
	}

    .HistoricalPics
    {
        position: relative;        
        top:5px;
        cursor:pointer;
        opacity:0.7;        
    }
    .HistoricalPics:hover
    {
        opacity:1.0;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="page" style="margin-top:30px;">
	    <img src="images/panorama/<% = filename %>" class="panorama" width="<% = picwidth %>" height="<% = picheight %>" usemap="testmap" alt="<% = pagetitle %>" />
	    <map id="testmap" name="testmap">
            <% = LinksContent %>		    
	    </map>
    </div>
    <div class="NavigatorBox">        
        <img src="" id="imgNavigation" runat="server" width="300"/>
        <% = NavigatorsContent %>
    </div>
    <div style="width:100%;">
        <table border="0" align="center">
            <tr>
                <td>
                    <a href="#" id="lnkLeftP1" runat="server" style="display:none;"><img src="images/icons/W.png" alt="قبلی" class="HistoricalPics" /></a>
                </td>
                <td></td>
                <td>
                    <a href="#" id="lnkRightP1" runat="server" style="display:none;"><img src="images/icons/E.png" alt="بعدی" class="HistoricalPics" /></a>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
