<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VTStationsFrame.aspx.cs" Inherits="Project_Management_Information_System1._0.VTStationsFrame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery-1.11.0.js" type="text/javascript"></script>
    <script src="js/MJScript.js" type="text/javascript"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/glyphicons.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <img id="imgMaps" style="width:100%; cursor:crosshair;" runat="server" />
            <% = LinksOnMapContent %>
        </div>        
        <span class="glyphicon glyphicon-camera" style="position:absolute; display:none; color:Blue;" id="posicon" ></span>
    </div>
    <script type="text/javascript">
        $("#imgMaps").on("click", function (e) {
            var m = document.getElementById("posicon");
            if (m.style.display == 'none') {
                m.style.display = 'block';
            }
            

            var w = document.getElementById("imgMaps");

            var s = $(document).scrollTop();

            var y = e.pageY - 5;
            var x = e.pageX - 5;

            var dwidth = document.getElementById("imgMaps").width;
            var dheight = document.getElementById("imgMaps").height;


            parent.document.getElementById("ctl00_ContentPlaceHolder1_txtmouseleft1").value = (x / dwidth);
            parent.document.getElementById("ctl00_ContentPlaceHolder1_txtmousetop1").value = y / dheight;
            parent.document.getElementById("ctl00_ContentPlaceHolder1_txtTargetPosID").value = "";

            m.style.left = x + "px";
            m.style.top = y + "px";

            var tt = document.getElementsByName("ExtantPos");

            for (w = 0; w < tt.length; w++) {
                tt[w].setAttribute("src", "images/Camera.png");
            }
        });
    </script>
    </form>
</body>
</html>
