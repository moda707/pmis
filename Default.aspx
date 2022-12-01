<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project_Management_Information_System1._0.Default" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>MODA Project Management Information System</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="width:100%;">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="width:100%;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox" style="width:100%;">
        <div class="item active">
          <img src="images/BG-01.jpg" alt="Developed by Mohsen Dastpak" style=" height:100%;">
          <div class="carousel-caption" style="font-size:large;">
            <a href="Login.aspx">MODA Project Management Information System</a>
          </div>
        </div>
        <div class="item">
          <img src="images/BG-02.jpg" alt="Developed by Mohsen Dastpak" style="height:100%;">
          <div class="carousel-caption" style="font-size:large;">
            <a href="Login.aspx">MODA Project Management Information System</a>
          </div>
        </div>
        <div class="item">
          <img src="images/BG-03.jpg" alt="Developed by Mohsen Dastpak" style="height:100%;">
          <div class="carousel-caption" style="font-size:large;">
            <a href="Login.aspx">MODA Project Management Information System</a>
          </div>
        </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>

    <script src="vendors/bootstrap/js/carousel.js"></script>    
    
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>
</html>