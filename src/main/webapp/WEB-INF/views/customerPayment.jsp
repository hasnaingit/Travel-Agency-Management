<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
     <style>
            /*  .inp for input fields   */
            .inp {padding: 6px 6px;margin: 8px 0;font-size:18px;font-family: URW Chancery L, cursive;display: inline-block;border: 2px solid #04d144;border-radius: 4px;box-sizing: border-box; width: 60%; margin-left :50px;}
            /*  .formbg  for content background   */
            .formbg{width: 800px; height: 840px; border: 2px solid #07b7f2; margin: 0px 0px 0px 100px; position: relative;}
            /* .l  for label   */
            .l{font-size: 18px; width: 250px;}  
            /* .sub for submit button   */
            .sub { width: 20%; background-color: #4CAF50; color: white; padding: 10px 10px; margin: 8px 0; border: none; border-radius: 4px; cursor: pointer; margin-left:100px;}
            .inp:focus{ background-color: #e2e6ea;}
            /*  .formheading for  Heading  at the top of  the form   */
            .formheading { border-radius: 1px; background-color:#f2f6f7;  width: 300px;   border: 4px solid #07b7f2;margin-left: 300px;}
            /*  the below css for only tables   */
            table{ border-collapse: collapse; width: 100%;}
            th, td { text-align: left; padding: 8px;}
            tr:nth-child(even){background-color:#e2e6ea}
            th { background-color: #4CAF50; color: white;}                
        </style>
        <script src="resources/bootstrap/bootstrap.min.css"></script>
        <script src="resources/js/angular.min.js"></script>
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
            var paymentlisto = ${paymentlist};
            var customerlisto = ${customerlist};
            angular.module('myapp', []).controller('PaymentController',
                    function ($scope) {
                        $scope.plo = paymentlisto;
                        $scope.clo = customerlisto;
                        console.log($scope.plo);
                        console.log($scope.clo);
                    });
        </script> 

  </head>
  <body ng-app="myapp"  ng-controller="PaymentController">
    
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
    
	<div class="container"  >
            
                <section class="content">                   
                    <div class="formheading">    <h1> Payment Section </h1> <br> <h4>you are almost Done for booking</h4> </div>

                              
                                        <form:form name="pay" modelAttribute="newPaymentObject" action="cuspaymentadd" method="post">
 
                                          
                                            <form:input class="inp" type="hidden" path="payid" required="true" id="payid"></form:input> 


                                                <label  class="l" for="catid"> User name</label>
                                                  <form:input class="inp" type="text" path="custid" value="${sessionScope.UserLoggedIn}" required="true" id="custid"></form:input>
<!--                                                <select  ng-model="custid" ng-options="c.custid as c.custname for c in clo" required="true"  class="inp">
                                                    <option value="" >customer code</option>
                                                </select>-->
                                            <form:hidden  value="{{custid}}" path="custid"></form:hidden><br></br> 

                                                <label class="l" for="catname">Payment for</label>
                                            <form:select  class="inp" required="true" path="payfor" >
                                                <option value="">choose </option>
                                                <option value="Hotel">Hotel Booking</option>
                                                <option value="Air">Air Booking</option>
                                                <option value="Bus">Bus Booking </option>
                                                <option value="package"> Packages Booking</option>

                                            </form:select>   

                                            <label class="l" for="catname">Package/bus/hotel Id</label>
                                            <form:input class="inp" type="text" path="bookingid" required="true" id="bookingid"></form:input> <br></br>

                                                <label class="l" for="catname">Choose Pay-Mode</label>
                                            <form:select  class="inp" required="true" path="paytype" >
                                                <option value="">choose </option>
                                                <option value="cash">Cash pay</option>
                                                <option value="bkash">bKash Pay</option>
                                                <option value="card">Card Pay</option> 
                                            </form:select>  

                                            <c:set var="now" value="<%=new java.util.Date()%>" />
                                            <label class="l" for="catname">select todays date</label>
                                            <form:input class="inp" type="text" path="paydate" required="true" id="paydate" value=" ${now}" readonly="true"></form:input> <br></br>

                                                <label class="l" for="catname">Amount</label>
                                            <form:input class="inp" type="text" path="amount" required="true" id="amount"></form:input> <br></br>

                                            <form:button  class ="sub" id="editbuttons" type="submit" name="Add" >Payment Now</form:button>
                                                
                                           
                                            
                                            
                                            
                                        </form:form> 
                                            
                                             <a href="generatinginvoice?getpayid={{plo.payid}}"  class="sub">Generate Invoice</a>
                                            
                                            
                                            <a href="editingpayment?payid={{plo.payid}}"><button id="editbuttons" type="submit" class="btn">Edit</button></a> <a href="removepayment/{{x.payid}}"><button  id="removebuttons" type="button" class="btn btn-danger">Remove</button></a>
                                 
                                  
                                </section> 
            
            
            
            
            
            
            
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
         <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

                    <script>
            $(document).ready(function () {
                var date_input = $('input[name="paydate"]'); //our date input has the name "date"
                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                date_input.datepicker({
                    format: 'dd-mm-yyyy',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                })
            })
                    </script>


  </body>
</html>