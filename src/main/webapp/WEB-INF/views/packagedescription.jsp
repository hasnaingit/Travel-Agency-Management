<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

        <title>Home-Organic Shopping</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Package details</title>
        <!-- Bootstrap core CSS -->
        <link href="resources/sir/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--<link rel="stylesheet" href="resources/css/bootstrap.min.css">-->
        <!-- Custom styles for this template -->
        <link href="resources/sir/cssnew/shop-homepage.css" rel="stylesheet">
        <link rel="stylesheet" href="resources/sir/css/animate.css">
        <link href="resources/img/logo.ico" rel="shortcut icon" />
        <script src="resources/sir/js/angular.js"></script>
        
        <script>
            var packagedetails = ${packagedata};
            angular.module('myapp', []).controller(
                    'PackageController', function ($scope) {
                        $scope.pdo = packagedetails;
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
  <a href="#contact">Hotels</a>
  <a href="#contact">Car Rent</a>
  <a href="#contact">Air Info</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
</div>
</div>
 <br>
    
	<div class="container">
            <div class="row">
                <div class="col-lg-9">

                    <div class="card mt-4" ng-app="myapp" ng-controller="PackageController">
                        <img class="card-img-top img-fluid" src="resources/image/{{pdo.packid}}.jpg" width="600" height="100" alt="">
                        <div class="card-body">
                            <h1 class="card-title">{{pdo.location}}</h1>
                            <h2 class="card-title"> package Id : {{pdo.packid}} </h2>
                            <h3>Tk.{{pdo.totalcost}}</h3>
                            <h4> total Days {{pdo.daynum}}  &#9733 total Night {{pdo.nightnum}}</h4>
                            <h4> total Adult :  {{pdo.adultnum}}  &#9733 Children : {{pdo.childnum}}</h4>
                            <h4> Departure Date : {{pdo.depdate}}  &#9733;&#9733;&#9733 Return Date : {{pdo.returndate}}</h4>
                           
                              <p class="card-text"> <h3>{{pdo.description}}</h3></p>                           
                        </div>
                        <div class="btn-group cart">
                            <c:if test="${sessionScope.UserLoggedIn !=null}">
                                <h1> <a href="showbookingpage?getPackId={{pdo.packid}}" 
                                        class="" id="cartbutton" style="padding: 10px; border: 3px solid red;"> Book Package </a></h1> 
                                        <h2><a href="displaypackagepage" class="" id="cartbutton" style="padding: 10px;"> View More package </a></h2>
                            </c:if>
                            <c:if test="${sessionScope.UserLoggedIn == null}">
                                <a href="perlogcheck?getPackId={{pdo.packid}}"
                                   class="btn btn-primary" id="loginproductsbutton"
                                   >Book Package</a>
                                <a href="displaypackagepage" class="btn btn-primary" id="viewproductsbutton">  View More Products </a>
                            </c:if>
                        </div>
                    </div>
                </div>
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
     <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="resources/sir/jquery/jquery.min.js"></script>
        <script src="resources/sir/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>