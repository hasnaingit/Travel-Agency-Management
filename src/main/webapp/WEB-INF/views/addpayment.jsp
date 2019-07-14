<%-- 
    Document   : addhotelbooking
    Created on : Jun 21, 2019, 9:23:31 PM
    Author     : Hasnain
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Travel Admin </title>
        <link rel="shortcut icon" href="resources/admindashboard/assets/dist/img/ico/favicon.png" type="image/x-icon">
        <link href="resources/admindashboard/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/plugins/lobipanel/lobipanel.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/plugins/pace/flash.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/plugins/toastr/toastr.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/plugins/emojionearea/emojionearea.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/plugins/monthly/monthly.css" rel="stylesheet" type="text/css"/>
        <link href="resources/admindashboard/assets/dist/css/stylehealth.min.css" rel="stylesheet" type="text/css"/>
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
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

        <!-- below script is for Angular Js -->
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


    </head> <!--Heading information lies here-->

    <body class="hold-transition sidebar-mini"    ng-app="myapp"  ng-controller="PaymentController">


        <!-- Site wrapper -->
            <div class="wrapper">
            <header class="main-header">
                <a href="<%=request.getContextPath() %>" class="logo"> <!-- Logo -->
                    <span class="logo-lg">                   
                        <img src="resources/admindashboard/assets/dist/img/logo.png" alt="">
                    </span>
                </a>
                <nav class="navbar navbar-static-top ">
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <!-- Sidebar toggle button-->
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-tasks"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Orders -->
            </header>
            <!-- =============================================== -->
            <!-- Left side column. contains the sidebar -->
          <aside class="main-sidebar">
                <!-- sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="image pull-left">
                            <img src="resources/admindashboard/assets/dist/img/avatar5.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="info">
                            <h4>Welcome</h4>
                            <p>${sessionScope.UserLoggedIn}</p>
                        </div>
                    </div>
                   
    
                    <ul class="sidebar-menu">                  
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-user"></i><span>Packages</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="showpackagespage">Add packages</a></li>
                                <li><a href="showpackagespage">packages list</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-sitemap"></i><span>Bus Service</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="showingcategorypage">Add Bus</a></li>
                                <li><a href="dep-list.html">Bus booking</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-list-alt"></i> <span>Customers </span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="showingcustomerpage">Add Customer</a></li>
                                <li><a href="showingcustomerpage">Customer list</a></li>
                                
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-check-square-o"></i><span>Customer feedback</span>
                                <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="showfeedbackpage">Show feedback</a></li>
                               
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-credit-card-alt"></i><span>Hote Service</span>
                                <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="showhotelpage">Add Hotel</a></li>
                                <li><a href="showhotelpage">Hotel list</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                              <i class="fa fa-file-text"></i><span>Reports</span>
                              <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="patient-wise-report.html">Customer Report</a></li>
                            <li><a href="doctor-wise-report.html">Package booking Report</a></li>
                            <li><a href="doctor-wise-report.html">Car booking Report</a></li>
                            <li><a href="doctor-wise-report.html">Hotel booking Report</a></li>
                            <li><a href="doctor-wise-report.html">Payment Report</a></li>
                            <li><a href="total-report.html">Total Report</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="widgets.html">
                            <i class="fa fa-user-circle-o"></i><span>Payment </span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="showpaymentpage">See payment table</a></li>                        
                        </ul>
                    </li>      
            </ul>
                 
        </div> 
    </aside>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                     <form action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                            <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </form>   
                    <div class="header-title">
                        <h1> Admin Dashboard</h1>
                        
                        <ol class="breadcrumb hidden-xs">
                            <li><a href="<%=request.getContextPath()%>"><i class="pe-7s-home"></i> Home</a></li>
                            <li><a href="login"><i class="pe-7s-home"></i> Logout</a></li>               
                        </ol>
                    </div>
                </section>

                                <!-- Main content -->
                                <section class="content">                   
                                    <div class="formheading">    <h1> Payment </h1> </div>

                                    <c:if test="${check}">
                                        <form:form name="pay" modelAttribute="newPaymentObject" action="paymentadd" method="post">

                                            <label  class="l" for="catid">Payment id</label>
                                            <form:input class="inp" type="text" path="payid" required="true" id="payid"></form:input> 


                                                <label  class="l" for="catid"> Customer id</label>
                                                <select  ng-model="custid" ng-options="c.custid as c.custname for c in clo" required="true"  class="inp">
                                                    <option value="" >customer code</option>
                                                </select>
                                            <form:hidden  value="{{custid}}" path="custid"></form:hidden><br></br> 

                                                <label class="l" for="catname">Payment for</label>
                                            <form:select  class="inp" required="true" path="payfor" >
                                                <option value="">choose </option>
                                                <option value="Hotel">Hotel Booking</option>
                                                <option value="Air">Air Booking</option>
                                                <option value="Bus">Bus Booking </option>
                                                <option value="package"> Packages Booking</option>

                                            </form:select>   

                                            <label class="l" for="catname">Booking id</label>
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
                                                <a  class="sub" href="showfeedbackpage">Reset</a>
                                        </form:form>
                                    </c:if>


                                    <c:if test="${!check}">
                                        <form:form name="payment" modelAttribute="newPaymentObject" action="paymentadd" method="post">

                                              <label  class="l" for="catid">Payment id</label>
                                            <form:input class="inp" type="text" path="payid" required="true" id="payid"></form:input> 


                                                <label  class="l" for="catid"> Customer id</label>
                                                <select  ng-model="custid" ng-options="c.custid as c.custname for c in clo" required="true"  class="inp">
                                                    <option value="" >customer code</option>
                                                </select>
                                            <form:hidden  value="{{custid}}" path="custid"></form:hidden><br></br> 

                                                <label class="l" for="catname">Payment for</label>
                                            <form:select  class="inp" required="true" path="payfor" >
                                                <option value="">choose </option>
                                                <option value="Hotel">Hotel Booking</option>
                                                <option value="Air">Air Booking</option>
                                                <option value="Bus">Bus Booking </option>
                                                <option value="package"> Packages Booking</option>

                                            </form:select>   

                                            <label class="l" for="catname">Booking id</label>
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

                                            <form:button  class ="sub" id="editbuttons" type="submit" name="Edit" >Feedback Now</form:button>
                                                <a  class="sub" href="showfeedbackpage">Reset</a>




                                        </form:form>
                                    </c:if>






                                    <!-- DataTables Example -->

                                    <div >

                                        <table border="1" cellspacing="15">
                                            <thead>
                                                <tr>

                                                    <th>Payment id</th>
                                                    <th>Customer id</th>
                                                    <th>Pay-for</th>
                                                    <th>Booking id</th>
                                                    <th>Pay type</th>
                                                    <th>Booking date </th>
                                                    <th>Amount</th>

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr ng-repeat="x in plo">

                                                    <td>{{x.payid}}</td>
                                                    <td>{{x.custid}}</td>
                                                    <td>{{x.payfor}}</td>
                                                    <td>{{x.bookingid}}</td>
                                                    <td>{{x.paytype}}</td>
                                                    <td>{{x.paydate}}</td>
                                                    <td>{{x.amount}}</td>


                                                    <td><a href="editingpayment?payid={{x.payid}}"><button id="editbuttons" type="submit" class="btn">Edit</button></a> <a href="removepayment/{{x.payid}}"><button  id="removebuttons" type="button" class="btn btn-danger">Remove</button></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </section> 
                                <!-- /.content -->


                            </div> <!-- /.content-wrapper -->


                            <footer class="main-footer">
                                <div class="pull-right hidden-xs"> <b>Version</b> 1.0</div>
                                <strong>Copyright &copy; 2016-2017 <a href="#">Dhaka Travel Agency</a>.</strong> All rights reserved.
                            </footer>
                    </div> <!-- ./wrapper -->
                    <!-- ./wrapper -->
                    <!-- Start Core Plugins
                   =====================================================================-->
                    <!-- jQuery -->
                    <script src="resources/admindashboard/assets/plugins/jQuery/jquery-1.12.4.min.js" type="text/javascript"></script>
                    <!-- jquery-ui --> 
                    <script src="resources/admindashboard/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.js" type="text/javascript"></script>
                    <!-- Bootstrap -->
                    <script src="resources/admindashboard/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
                    <!-- lobipanel -->
                    <script src="resources/admindashboard/assets/plugins/lobipanel/lobipanel.min.js" type="text/javascript"></script>
                    <!-- Pace js -->
                    <script src="resources/admindashboard/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
                    <!-- SlimScroll -->
                    <script src="resources/admindashboard/assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
                    <!-- FastClick -->
                    <script src="resources/admindashboard/assets/plugins/fastclick/fastclick.min.js" type="text/javascript"></script>
                    <!-- Hadmin frame -->
                    <script src="resources/admindashboard/assets/dist/js/custom1.js" type="text/javascript"></script>
                    <!-- End Core Plugins
                    =====================================================================-->
                    <!-- Start Page Lavel Plugins
                    =====================================================================-->
                    <!-- Toastr js -->
                    <script src="resources/admindashboard/assets/plugins/toastr/toastr.min.js" type="text/javascript"></script>
                    <!-- Sparkline js -->
                    <script src="resources/admindashboard/assets/plugins/sparkline/sparkline.min.js" type="text/javascript"></script>
                    <!-- Data maps js -->
                    <script src="resources/admindashboard/assets/plugins/datamaps/d3.min.js" type="text/javascript"></script>
                    <script src="resources/admindashboard/assets/plugins/datamaps/topojson.min.js" type="text/javascript"></script>
                    <script src="resources/admindashboard/assets/plugins/datamaps/datamaps.all.min.js" type="text/javascript"></script>
                    <!-- Counter js -->
                    <script src="resources/admindashboard/assets/plugins/counterup/waypoints.js" type="text/javascript"></script>
                    <script src="resources/admindashboard/assets/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
                    <!-- ChartJs JavaScript -->
                    <script src="resources/admindashboard/assets/plugins/chartJs/Chart.min.js" type="text/javascript"></script>
                    <script src="resources/admindashboard/assets/plugins/emojionearea/emojionearea.min.js" type="text/javascript"></script>
                    <!-- Monthly js -->
                    <script src="resources/admindashboard/assets/plugins/monthly/monthly.js" type="text/javascript"></script>
                    <!-- Data maps -->
                    <script src="resources/admindashboard/assets/plugins/datamaps/d3.min.js" type="text/javascript"></script>
                    <script src="resources/admindashboard/assets/plugins/datamaps/topojson.min.js" type="text/javascript"></script>
                    <script src="resources/admindashboard/assets/plugins/datamaps/datamaps.all.min.js" type="text/javascript"></script>
                    <script src="resources/admindashboard/assets/dist/js/custom.js" type="text/javascript"></script>

                    <!-- End Theme label Script
                    =====================================================================-->
                    <script>
            "use strict"; // Start of use strict
            // notification


            //counter
            $('.count-number').counterUp({
                delay: 10,
                time: 5000
            });

            //data maps
            var basic_choropleth = new Datamap({
                element: document.getElementById("map1"),
                projection: 'mercator',
                fills: {
                    defaultFill: "#009688",
                    authorHasTraveledTo: "#fa0fa0"
                },
                data: {
                    USA: {fillKey: "authorHasTraveledTo"},
                    JPN: {fillKey: "authorHasTraveledTo"},
                    ITA: {fillKey: "authorHasTraveledTo"},
                    CRI: {fillKey: "authorHasTraveledTo"},
                    KOR: {fillKey: "authorHasTraveledTo"},
                    DEU: {fillKey: "authorHasTraveledTo"}
                }
            });

            var colors = d3.scale.category10();

            window.setInterval(function () {
                basic_choropleth.updateChoropleth({
                    USA: colors(Math.random() * 10),
                    RUS: colors(Math.random() * 100),
                    AUS: {fillKey: 'authorHasTraveledTo'},
                    BRA: colors(Math.random() * 50),
                    CAN: colors(Math.random() * 50),
                    ZAF: colors(Math.random() * 50),
                    IND: colors(Math.random() * 50)
                });
            }, 2000);

            //bar chart
            var ctx = document.getElementById("barChart");
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                    datasets: [
                        {
                            label: "My First dataset",
                            data: [65, 59, 80, 81, 56, 55, 40, 25, 35, 51, 94, 16],
                            borderColor: "#009688",
                            borderWidth: "0",
                            backgroundColor: "#009688"
                        },
                        {
                            label: "My Second dataset",
                            data: [28, 48, 40, 19, 86, 27, 90, 91, 41, 25, 34, 47],
                            borderColor: "#009688",
                            borderWidth: "0",
                            backgroundColor: "#009688"
                        }
                    ]
                },
                options: {
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                    }
                }
            });
            //radar chart
            var ctx = document.getElementById("radarChart");
            var myChart = new Chart(ctx, {
                type: 'radar',
                data: {
                    labels: [["Eating", "Dinner"], ["Drinking", "Water"], "Sleeping", ["Designing", "Graphics"], "Coding", "Cycling", "Running"],
                    datasets: [
                        {
                            label: "My First dataset",
                            data: [65, 59, 66, 45, 56, 55, 40],
                            borderColor: "#00968866",
                            borderWidth: "1",
                            backgroundColor: "rgba(0, 150, 136, 0.35)"
                        },
                        {
                            label: "My Second dataset",
                            data: [28, 12, 40, 19, 63, 27, 87],
                            borderColor: "rgba(55, 160, 0, 0.7",
                            borderWidth: "1",
                            backgroundColor: "rgba(0, 150, 136, 0.35)"
                        }
                    ]
                },
                options: {
                    legend: {
                        position: 'top'
                    },
                    scale: {
                        ticks: {
                            beginAtZero: true
                        }
                    }
                }
            });

            // Message
            $('.message_inner').slimScroll({
                size: '3px',
                height: '320px'
            });

            //emojionearea
            $(".emojionearea").emojioneArea({
                pickerPosition: "top",
                tonesStyle: "radio"
            });

            //monthly calender
            $('#m_calendar').monthly({
                mode: 'event',
                //jsonUrl: 'events.json',
                //dataType: 'json'
                xmlUrl: 'events.xml'
            });


            //line chart
            var ctx = document.getElementById("lineChart");
            var myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                    datasets: [
                        {
                            label: "My First dataset",
                            borderColor: "rgba(0,0,0,.09)",
                            borderWidth: "1",
                            backgroundColor: "rgba(0,0,0,.07)",
                            data: [22, 44, 67, 43, 76, 45, 12, 45, 65, 55, 42, 61, 73]
                        },
                        {
                            label: "My Second dataset",
                            borderColor: "#009688",
                            borderWidth: "1",
                            backgroundColor: "#009688",
                            pointHighlightStroke: "#009688",
                            data: [16, 32, 18, 26, 42, 33, 44, 24, 19, 16, 67, 71, 65]
                        }
                    ]
                },
                options: {
                    responsive: true,
                    tooltips: {
                        mode: 'index',
                        intersect: false
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    }

                }
            });


                    </script>
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