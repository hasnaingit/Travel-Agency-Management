<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- 
    Document   : test
    Created on : Jul 10, 2019, 12:22:06 PM
    Author     : C5
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="resources/sir/js/angular.js"></script>
        
        <script>
            var buslist = ${buslist};
            angular.module('myapp', []).controller('BusController',
                    function ($scope) {
                        $scope.productangularobject = buslist;
                    });
        </script>
        
 <script>

            var traininfolist =${businfolist};
           
            angular.module('myapps', []).controller('searchtrainController',
                    function ($scope) {

                        $scope.businflist = traininfolist;
                        
                        console.log($scope.businflist);
                        

                    });
        </script>
    </head>
    <body>
      
        
        
        
        <div ng-app="myapps" ng-controller="searchtrainController">
            
        <form:form commandName="forsearchingtrain" action="viewsearchbuspage"
enctype="multipart/form-data">

     <h3><strong><span>S</span>earch Bus</strong>    <br> <br> 
     
     <select class="form-control" style=" width: 300px;" ng-model="startplace" ng-options="y.startplace as y.startplace for y in businflist" required="true">
<option value="">-- Choose From Station --</option>
</select>
 <form:hidden  class="form-control" value="{{startplace}}" path="startplace"></form:hidden>
  <br>
    
  <select class="form-control" style="width: 300px;" ng-model="endplace" ng-options="y.endplace as y.endplace for y in businflist" required="true">
 <option value="">-- Choose Your Destination --</option>
 </select>
 <form:hidden  class="form-control" value="{{endplace}}" path="endplace"></form:hidden>
 <br>
  
 <form:button id="editbuttons" type="submit"  class="btn btn-success">Search Bus</form:button>
 </form:form>
 
        </div>
        
        
        
        <br><br>
        
        
        
        
        
        
        
        
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
        
        
        
        
        
        
    </body>
</html>
