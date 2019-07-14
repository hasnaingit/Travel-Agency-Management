<%-- 
    Document   : addproduct
    Created on : Nov 25, 2018, 5:18:28 PM
    Author     : User
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

        <script>
            var busbookinglist = ${busbookinglist};
            var buslist = ${buslist};
            var customerlist = ${customerlist};


            angular.module('myapp', []).controller('busbookingcontroller',
                    function ($scope) {
                        
                        $scope.bbl = busbookinglist;
                        $scope.bl = buslist;
                        $scope.cl = customerlist;

                        console.log($scope.bbl);
                    });
        </script>
    </head>
    <body id="page-top" ng-app="myapp" ng-controller="busbookingcontroller">

        <form:form commandName="newBusBookingObject" action="busbookingadd">
            <c:if test="${!check}">
                <div >
                    <form:input  type="text" path="busbookingid" readonly="true" required="true"></form:input>
                    </div>
            </c:if>  
            
            
            <c:if test="${check}">
                <div >
                    <label for="productquantity">bus booking id</label>
                    <form:input  type="text" path="busbookingid"  readonly="true" required="true"></form:input>
                    </div>
            </c:if> 
            

            
             <!-- bus id -->

  <select  ng-model="busid" ng-options="x.busid as x.busname for x in bl" required="true">
   <option value="">-- Choose bus --</option>
    </select>
    <form:hidden  value="{{busid}}" path="busid"></form:hidden><br></br> 
    
     <!-- cust id -->
    
    <select  ng-model="custid" ng-options="x.custid as x.custname for x in cl" required="true">
   <option value="">-- select  customer --</option>
    </select>
    <form:hidden   value="{{custid}}" path="custid"></form:hidden><br></br> 
    
    
    
    
    <label for="date">Date </label>
    <form:input type="text"  path="bookingdate" required="true" id="bookingdate"></form:input>
    <br></br>
    
    <label for="productquantity">Status</label>
    <form:input type="text"  path="status" required="true" id="status"></form:input>
    
    <br></br>

    <label for="productquantity">payment</label>
    <form:input type="text"   path="payment" required="true" id="payment"></form:input>

   <br></br> 

 
            <c:if test="${check}">
                <form:button id="editbuttons" type="submit" name="Add" >Book a bus </form:button>
                <form:button id="removebuttons" type="reset" >Reset Details</form:button>
            </c:if>
            <c:if test="${!check}">
                <form:button id="editbuttons" type="submit" name="Edit" >Edit Details</form:button>
                <form:button id="removebuttons" type="reset" >Reset Details</form:button>
            </c:if>
            <a href="showbusbookingpage"><button id="show" type="button" class="btn">Cancel</button></a>        
        </form:form>
            
 
            
            
        <!-- DataTables Example -->
<br></br> <br></br>
        <table  id="dataTable" width="100%" cellspacing="10" border="1px">
            <thead>
                <tr>
                    <th> Bus Booking id </th>
                    <th>Bus name</th>
                    <th>Customer name</th>
                    <th>Date</th>
                    <th>Booking status</th>
                    <th>payment</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="h in bbl">
              

                    <td>{{h.busbookingid}}</td>
                    <td>{{h.busid}}</td>
                    <td>{{h.custid}}</td>
                    <td>{{h.bookingdate}}</td>
                    <td>{{h.status}}</td>
                    <td>{{h.payment}}</td>

                    <td><a href="editingbusbooking?getpid={{h.busbookingid}}"><button id="editbuttons" type="submit" class="btn">Edit</button></a> <a href="removebusbooking/{{h.busbookingid}}"><button id="removebuttons" type="button" class="btn btn-danger">Remove</button></a>
                    </td>
                </tr>
            </tbody>
        </table>


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


