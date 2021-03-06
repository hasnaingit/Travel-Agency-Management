
<%-- 
    Document   : addpackcategorypage
    Created on : Jun 18, 2019, 10:50:06 AM
    Author     : C5
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
            .formbg{width: 1500px; height: 840px; border: 2px solid #07b7f2; margin: 0px 0px 0px 100px; position: relative;}
            /* .l  for label   */
            .l{font-size: 18px; width: 250px;}  
            /* .sub for submit button   */
            .sub { width: 20%; background-color: #4CAF50; color: white; padding: 10px 10px; margin: 8px 0; border: none; border-radius: 4px; cursor: pointer; margin-left:100px;}
            .inp:focus{ background-color: #e2e6ea;}
            /*  .formheading for  Heading  at the top of  the form   */
            .formheading { border-radius: 1px; background-color:#f2f6f7;  width: 300px;   border: 4px solid #07b7f2;margin-left: 300px;}
            /*  the below css for only tables   */
            table{ border-collapse: collapse; width: 1500px;}
            th, td { text-align: left; padding: 8px;}
            tr:nth-child(even){background-color:#e2e6ea}
            th { background-color: black; color: white;}                
        </style>
        <script src="resources/bootstrap/bootstrap.min.css"></script>
        <script src="resources/js/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

        <!-- below script is for Angular Js -->
        <script>
                    var packageslisto = ${packageslist};
                    var packcatlisto = ${packcatlist};
                   
                    angular.module('myapp', []).controller('PackagesController',
                            function ($scope) {
                                $scope.plo = packageslisto;
                                $scope.pclo = packcatlisto;
                       
                                console.log($scope.plo);
                                console.log($scope.pclo);
                           
                            });
        </script> 


    </head> <!--Heading information lies here-->

    <body class="hold-transition sidebar-mini"    ng-app="myapp" ng-controller="PackagesController">


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
                                    <div class="formheading">    <h1>Package</h1> </div>

 <c:if test="${check}">
  <form:form name="packagesform" modelAttribute="newPackagesObject" enctype="multipart/form-data" action="packagesadd" method="post">

 <label  class="l" for="packid">pack id</label>
  <form:input class="inp" type="text" path="packid" required="true" id="packid"></form:input> 

   <label  class="l" for="catid">Select package category</label>
                  <select  ng-model="packcatid" ng-options="h.packcatid as h.packtitle for h in pclo" required="true" class="inp" >
                  <option value="" class="inp">choose package category</option>
                  </select>
                   <form:hidden  value="{{packcatid}}" path="packcatid"></form:hidden><br></br> 

  <label class="l" for="catname">Start Date </label>
 <form:input class="inp"  type="text" path="depdate" required="true" id="depdate"></form:input> <br></br>

 <label class="l" for="catname">End Date</label>
 <form:input class="inp" type="text" path="returndate" required="true" id="returndate"></form:input> <br></br>

 <label class="l" for="catname">Location</label>
 <form:input class="inp"  type="text" path="location" required="true" id="location"></form:input> <br></br>

 
  <label class="l" for="catname">Total Days</label>
 <form:input class="inp"  type="text" path="daynum" required="true" id="daynum"></form:input> <br></br>

 
 
  <label class="l" for="catname">Total Night</label>
 <form:input class="inp"  type="text" path="nightnum" required="true" id="nightnum"></form:input> <br></br>

 
  <label class="l" for="catname">Number of Adults</label>
 <form:input class="inp"  type="text" path="adultnum" required="true" id="returndate"></form:input> <br></br>

  <label class="l" for="catname">Number of child</label>
 <form:input class="inp" type="text" path="childnum" required="true" id="returndate"></form:input> <br></br>

 
  <label class="l" for="catname">Accomodotion Cost</label>
 <form:input class="inp"  type="text" path="accdncost" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Bus Cost</label>
 <form:input class="inp"  type="text" path="buscost" required="true" id="returndate"></form:input> <br></br>

 
 
 
  <label class="l" for="catname">Air Cost</label>
 <form:input class="inp" type="text" path="aircost" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Tourist Guide Cost</label>
 <form:input class="inp" placeholder="package end date" type="text" path="guidecost" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Package Status</label>
 <form:input class="inp" type="text" path="status" required="true" id="returndate"></form:input> <br></br>

 
  <label class="l" for="catname">Package Details </label>
 <form:input class="inp"  type="text" path="description" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Package Cost</label>
 <form:input class="inp"  type="text" path="totalcost" required="true" id="returndate"></form:input> <br></br>

 <label class="l" for="catname">Image</label>
   <form:input type="file" class="inp"  path="photourl" required="true" id="photourl"></form:input>



                                            <form:button  class ="sub" id="editbuttons" type="submit" name="Add" >Add a package</form:button>
                                            <form:button class ="sub"  id="removebuttons" type="reset" >Reset Package</form:button>
                                        </form:form>
                                    </c:if>
                                            
                                            
                                            
                                <c:if test="${!check}">
  <form:form name="packagesform" modelAttribute="newPackagesObject" enctype="multipart/form-data" action="packagesadd" method="post">

 <label  class="l" for="packid">pack id</label>
  <form:input class="inp" type="text" path="packid" required="true" id="packid"></form:input> 

   <label  class="l" for="catid">Select package category</label>
                                                <select  ng-model="packcatid" ng-options="h.packcatid as h.packtitle for h in pclo" required="true" class="inp" >
                                                    <option value="" class="inp">choose package category</option>
                                                </select>
                                            <form:hidden  value="{{packcatid}}" path="packcatid"></form:hidden><br></br> 

  <label class="l" for="catname">Start Date </label>
 <form:input class="inp"  type="text" path="depdate" required="true" id="depdate"></form:input> <br></br>

 <label class="l" for="catname">End Date</label>
 <form:input class="inp"  type="text" path="returndate" required="true" id="returndate"></form:input> <br></br>

 <label class="l" for="catname">Location</label>
 <form:input class="inp"  type="text" path="location" required="true" id="location"></form:input> <br></br>

 
  <label class="l" for="catname">Total Days</label>
 <form:input class="inp"  type="text" path="daynum" required="true" id="daynum"></form:input> <br></br>

 
 
  <label class="l" for="catname">Total Night</label>
 <form:input class="inp"  type="text" path="nightnum" required="true" id="nightnum"></form:input> <br></br>

 
  <label class="l" for="catname">Number of Adults</label>
 <form:input class="inp" type="text" path="adultnum" required="true" id="returndate"></form:input> <br></br>

  <label class="l" for="catname">Number of child</label>
 <form:input class="inp"  type="text" path="childnum" required="true" id="returndate"></form:input> <br></br>

 
  <label class="l" for="catname">Accomodotion Cost</label>
 <form:input class="inp"  type="text" path="accdncost" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Bus Cost</label>
 <form:input class="inp" type="text" path="buscost" required="true" id="returndate"></form:input> <br></br>

 
 
 
  <label class="l" for="catname">Air Cost</label>
 <form:input class="inp"  type="text" path="aircost" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Tourist Guide Cost</label>
 <form:input class="inp"  type="text" path="guidecost" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Package Status</label>
 <form:input class="inp"  type="text" path="status" required="true" id="returndate"></form:input> <br></br>

 
  <label class="l" for="catname">Package Details </label>
 <form:input class="inp" type="text" path="description" required="true" id="returndate"></form:input> <br></br>

 
 
  <label class="l" for="catname">Package Cost</label>
 <form:input class="inp" type="text" path="totalcost" required="true" id="returndate"></form:input> <br></br>

 

 <label class="l" for="catname">Image</label>
   <form:input type="file" class="inp"  path="photourl" required="true" id="photourl"></form:input>



                                            <form:button  class ="sub" id="editbuttons" type="submit" name="Edit" >Edit package </form:button>
                                            <form:button class ="sub"  id="removebuttons" type="reset"  >Reset package</form:button>
                                        </form:form>
                                    </c:if>


                                    <!-- DataTables Example -->

                                    <div  style=" overflow-x:auto;">

                                        <table border="1" cellspacing="15">
                                            <thead>
                                                <tr>

                                                    <th>Image </th>
                                                    <th>package Id </th>
                                                    <th>package category id </th>
                                                    <th>Location </th>
                                                    <th>Total days </th>
                                                    <th>Total Night </th>
                                                    <th>Adult Number </th>
                                                    <th>Child Number </th>
                                                    <th>Accomodation Cost </th>
                                                    <th>Bus cost </th>
                                                    <th>Air Cost </th>
                                                    <th>Guide and Other Cost </th>
                                                    <th>Departure Date </th>
                                                    <th>Return Date </th>
                                                    <th>Package Status </th>
                                                    <th>package Details </th>
                                                    <th>Toatal package Price </th>
                                       
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr ng-repeat="x in plo">
 <td><img class="img-responsive" style="width:300px ;height:100px" src="resources/image/{{x.packid}}.jpg" /></td>
 
                                                    <td>{{x.packid}}</td>
                                                    <td>{{x.packcatid}}</td>
                                                    <td>{{x.location}}</td>
                                                    <td>{{x.daynum}}</td>
                                                    <td>{{x.nightnum}}</td>    
                                                    <td>{{x.adultnum}}</td>
                                                    <td>{{x.childnum}}</td>
                                                    
                                                  
                                                    <td>{{x.accdncost}}</td>
                                                    <td>{{x.buscost}}</td>
                                                    <td>{{x.aircost}}</td>
                                                    <td>{{x.guidecost}}</td>
                                                    
                                                    <td>{{x.depdate}}</td>
                                                    <td>{{x.returndate}}</td>
                                                    <td>{{x.status}}</td>
                                                    <td>{{x.description}}</td>
                                                    <td>{{x.totalcost}}</td>
                                                  





                                                    <td><a href="editinpackages?packid={{x.packid}}"><button id="editbuttons" type="submit" class="btn">Edit</button></a> <a href="removepackages/{{x.packid}}"><button  id="removebuttons" type="button" class="btn btn-danger">Remove</button></a>
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
                                var date_input = $('input[name="depdate"]'); //our date input has the name "date"
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
                                var date_input = $('input[name="returndate"]'); //our date input has the name "date"
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