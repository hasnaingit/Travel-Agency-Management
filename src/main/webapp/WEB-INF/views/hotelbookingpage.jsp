<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head> 
       <script src="resources/sir/js/angular.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            var addresses = ${packagebookingjson};
         
            angular.module('myapp', []).controller('HotelbookingController',
                    function ($scope) {
                        $scope.addressitems = addresses;
                    })
        </script>
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
            .input-group {
                margin: 20px 0px 20px;
                width: 75%;
                border-radius: 10px;
            }

            input[type=text]:focus {
                border: 2px solid #9ccc65;
                border-radius: 10px;
            }

            #leftdiv {
                border-right: 2px solid #9ccc65;
            }

            #holder {
                display: inline-block;
                background-color: #ffffff;
                border-radius: 5px;
                box-shadow: 2px 2px 20px #dcedc8;
                margin: 10px;
            }

            #top-block {
                padding-top: 4px;
            }

            #bottom-block {
                padding: 15px 20px;
            }

            #submitbtn, #resetbtn {
                width: 34.5%;
                margin-right: 4px;
                background-color: #9ccc65;
                color: #ffffff;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);	
            }

            #paybutton {
                width: 100%;
                margin-right: 4px;
                color: #ffffff;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);	
            }

            #submitbtn:hover, #resetbtn:hover, #paybutton:HOVER {
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);
                color: #ffffff;
            }

            #editlink, #removelink {
                color: #9ccc65;
                font-size: 15px;
            }
        </style>

</head>
<body ng-app="myapp" ng-controller="HotelbookingController">
    
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

<section id="main-content"> <br>
    <br>
	
    <!--***********************************main content*********************************************************-->

    
    <div id="mainBody" class="container" style=" background-color: lightgreen;">
            <form:form action="addhotelbooking" method="post"
                       modelAttribute="billingAddressObj">
                <div id="leftdiv" class="col-sm-6">
                     <h3>
                        <b> Hotel booking page</b>
                    </h3>
                   
                    <div class="input-group">
                        <form:input type="hidden" class="form-control" id="" name=""
                                    aria-describedby="basic-addon1" path="hotelbookingid"></form:input>
                        </div>
                   
                    
               
                    
                    
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-user-o" aria-hidden="true"></i>
                            </span>
                        <form:input type="text" class="form-control"
                                    placeholder="Email" id="" name=""
                                    aria-describedby="basic-addon1" path="email"></form:input>
                        </div>
                    
                    
                    
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-address-card" aria-hidden="true"></i>

                            </span>
                        <form:input type="text" class="form-control"
                                    placeholder="booking date" id="" name=""
                                    aria-describedby="basic-addon1" path="bookingdate"></form:input>
                        </div>
                    
                    
                     <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-user-o" aria-hidden="true"></i>
                            </span>
                        <label  class="form-control"
                                    id="" name=""
                                    aria-describedby="basic-addon1" >User Name : ${sessionScope.UserLoggedIn} </label>
                        </div>
                        
                        
                        
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-user-o" aria-hidden="true"></i>
                            </span>
                        <form:input type="text" class="form-control"
                                   value="${sessionScope.hotelid}" id="" name=""
                                    aria-describedby="basic-addon1" path="hotelid"></form:input>
                        </div>
                    
                      
                      <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-user-o" aria-hidden="true"></i>
                            </span>
                        <form:input type="text" class="form-control"
                                 placeholder="Number of Adult"   id="" name=""
                                    aria-describedby="basic-addon1" path="adultnum"></form:input>
                        </div>
                      <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-user-o" aria-hidden="true"></i>
                            </span>
                        <form:input type="text" class="form-control"
                               placeholder="Number of Child"  id="" name=""
                                    aria-describedby="basic-addon1" path="childnum"></form:input>
                        </div>
                    
                        
                        
                        
                        
                        
                    
                        
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-address-card" aria-hidden="true"></i>

                            </span>
                        <form:input type="text" class="form-control"
                                    placeholder="check in date" id="" name=""
                                    aria-describedby="basic-addon1" path="startdate"></form:input>
                        </div>
                        
                        
                         <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-address-card" aria-hidden="true"></i>

                            </span>
                        <form:input type="text" class="form-control"
                                    placeholder="check out date" id="" name=""
                                    aria-describedby="basic-addon1" path="enddate"></form:input>
                        </div>
                        
                        
  

                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1">
                                <div class="glyphicon glyphicon-inbox"></div>
                            </span>
                        <form:input type="text" class="form-control" placeholder="total days"
                                    id="" name="" aria-describedby="basic-addon1" path="totaldays"></form:input>
                        </div>
                        
                        
                        
                        
                  
                         <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"> <i
                                    class="fa fa-address-card" aria-hidden="true"></i>

                            </span>
                        <form:input type="text" class="form-control"
                                  placeholder="price " id="" name=""
                                    aria-describedby="basic-addon1" path="totalcost"></form:input>
                        </div>      
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                       
    <button name="addnew" id="submitbtn" class="btn" type="submit">
                            <i class="fa fa-credit-card" aria-hidden="true"></i> Confirm Booking
      </button>  
 
                        
           
                </div>
            </form:form>

      
                
                
<!--                
            <div id="rightDiv" class="holder col-sm-6">

                <div id="holder" ng-repeat="a in addressitems">
                    <div id="top-block">
                        <a href="editaddress?getaddressid={{a.addressid}}" class="btn"
                           id="editlink"><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="removeaddress?getaddressid={{a.addressid}}"
                           class="btn pull-right" id="removelink"><span
                                class="glyphicon glyphicon-remove"></span></a>
                    </div>
                    <div id="bottom-block">
                        <div class="lead">{{a.emailid}}</div>
                        <div>{{a.packid}}</div>
                        <div>{{a.bookingstatus}}</div>
                        
                         <a href="showpaymentpage" class=" btn fa fa-credit-card"  id="submitbtn">  Payment now </a>
                        
                        <div>
                            <a href="generatinginvoice?getaddressid={{a.addressid}}" id="paybutton" class="btn" type="submit"> 
                                <i class="fa fa-truck" aria-hidden="true"></i> Deliver Here
                            </a>
                        </div>
                    </div>

                </div>

            </div>    -->
        </div>
    <br>
    <br>
    <br>
    
      <div  style=" border: 2px solid gray; height: 300px; ">
            Copyright @ The Dhaka Travel Agency
        </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="resources/userdashboard/js/bootstrap.js"></script>
<script src="resources/userdashboard/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="resources/userdashboard/js/scripts.js"></script>
<script src="resources/userdashboard/js/jquery.slimscroll.js"></script>
<script src="resources/userdashboard/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="resources/userdashboard/js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
<!-- calendar -->
	<script type="text/javascript" src="resources/userdashboard/js/monthly.js"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});


		});
	</script>
	<!-- //calendar -->
        
         <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

                    <script>
                            $(document).ready(function () {
                                var date_input = $('input[name="startdate"]'); //our date input has the name "date"
                                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                date_input.datepicker({
                                    format: 'dd-mm-yyyy',
                                    container: container,
                                    todayHighlight: true,
                                    autoclose: true,
                                })
                            })
                    </script>
        
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

                    <script>
                            $(document).ready(function () {
                                var date_input = $('input[name="enddate"]'); //our date input has the name "date"
                                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                date_input.datepicker({
                                    format: 'dd-mm-yyyy',
                                    container: container,
                                    todayHighlight: true,
                                    autoclose: true,
                                })
                            })
                    </script>
                    
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

                    <script>
                            $(document).ready(function () {
                                var date_input = $('input[name="bookingdate"]'); //our date input has the name "date"
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
