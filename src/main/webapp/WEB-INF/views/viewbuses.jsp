<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Adventure - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">

    <link rel="stylesheet" href="resources/css/aos.css">

    <link rel="stylesheet" href="resources/css/ionicons.min.css">

    <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/icomoon.css">
    <link rel="stylesheet" href="resources/css/style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/sir/css/default.css">
        <link rel="stylesheet" href="resources/sir/css/bootstrap-theme.css">
        <link rel="stylesheet" href="resources/sir/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="resources/sir/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/sir/css/animate.css">

        <script src="resources/sir/js/bootstrap.js"></script>
        <script src="resources/sir/js/bootstrap.min.js"></script>

        <script src="resources/sir/js/angular.js"></script>

        
<style>
.b{
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 20px 60px;
  text-decoration: none;
  font-size: 18px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 700px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 700px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
        <style type="text/css">
            .carousel-inner>.item>img, .carousel-inner>.item>a>img {
                width: 100%;
                height: 440px;
                max-height: 400px;
            }

            .panel {
                display: inline-block;
                background-color: lightblue;
            }

            .panel:hover {
                cursor: pointer;
                background-color: #dcedc8;
                -webkit-transition: background-color ease-in 0.4s;
                transition: background-color ease-in 0.4s;
            }

            #addtocartbutton, #viewproductsbutton {
                background-color: #9CCC65;
                color: #ffffff;
            }

            #addtocartbutton:hover, #viewproductsbutton:hover {
                background-color: #aed581;
                color: #ffffff;
            }

            #productimage:hover {
                transition: all 0.5s ease;
                transform: scale(1.07);
            }

            #pricediv {
                text-align: right;
                font-size: 20px;
                font-weight: bold;
                font-family: sans-serif;
            }

            #producta {
                color: #000000;
                text-decoration: none;
            }

            #welldiv {
                background-color: #ffffff;
            }

            #loginproductsbutton {
                color: #ffffff;
                text-decoration: none;
                margin-right: 110px;
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);
            }
            #loginproductsbutton:HOVER {
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);	
            }
        </style>
        <script>
            var buslist = ${buslist};
            angular.module('myapp', []).controller('BusController',
                    function ($scope) {
                        $scope.productangularobject = buslist;
                    });
        </script>
        
 
  </head>
  <body>
    
      <div class="h" style="align-content: center;">
          
           <img src="${pageContext.request.contextPath}/resources/images/tr.png"/> 
          
      </div>
      <div class="b" >
<div class="topnav" id="myTopnav">
  <a href="<%=request.getContextPath() %>" class="active">Home</a>
  <a href="displaypackagepage">Packages</a>
  <a href="displayhotel">Hotels</a>
  <a href="displaybus">Car Rent</a>
  <a href="showsearchbuspage">Search Car</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>

</div>

</div   >

 <br>

    
		    <div id="welldiv" ng-app="myapp"
             ng-controller="BusController">
                        <div style="border: 2px solid black; padding: 10px 20px; width: 50%; margin-left: 300px; font-size: 24px; ">
            <h1 style="text-align: center;"> Choose Car</h1>
                        </div>
            <div class="panel scroll animated fadeInUp delay-05s" style="margin-left: 50px;"
                 ng-repeat="p in productangularobject">
                <a href="busdescription?getId={{p.busid}}" id="producta">

                    <div class="panel-body">

                        <img id="productimage" class="img-rounded img-fluid"
                             src="resources/image/{{p.busid}}.jpg" height="200px"
                             width="200px">

                        <div class="lead" style="margin-top: 5px">{{p.busid}}</div>
                        <div class="">{{p.busname}}</div>
                        <hr>
                        <div id="pricediv">
                            <strong style="margin-top: 10px">Tk.{{p.fare}}</strong>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    
    
  
    <!------------------------------------------footer--------------------------------------->

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Adventure</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Online enquiry</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
                <li><a href="#" class="py-2 d-block">General enquiries</a></li>
                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                <li><a href="#" class="py-2 d-block">Refund policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Beach</a></li>
                <li><a href="#" class="py-2 d-block">Adventure</a></li>
                <li><a href="#" class="py-2 d-block">Wildlife</a></li>
                <li><a href="#" class="py-2 d-block">Honeymoon</a></li>
                <li><a href="#" class="py-2 d-block">Nature</a></li>
                <li><a href="#" class="py-2 d-block">Party</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>

  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.easing.1.3.js"></script>
  <script src="resources/js/jquery.waypoints.min.js"></script>
  <script src="resources/js/jquery.stellar.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/js/aos.js"></script>
  <script src="resources/js/jquery.animateNumber.min.js"></script>
  <script src="resources/js/bootstrap-datepicker.js"></script>
  <script src="resources/js/jquery.timepicker.min.js"></script>
  <script src="resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="resources/js/google-map.js"></script>
  <script src="resources/js/main.js"></script>
    
  </body>
</html>