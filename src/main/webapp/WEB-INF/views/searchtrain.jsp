<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Search Train</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <link href="resources/img/logo.ico" rel="shortcut icon" />
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="resources/datatables/dataTablesbootstrap4.css" rel="stylesheet">
        <link href="resources/cssnew/sb-admin.css" rel="stylesheet">

        <script>

            var traininfolist =${businfolist};
           
            angular.module('myapp', []).controller('searchtrainController',
                    function ($scope) {

                        $scope.businflist = traininfolist;
                        
                        console.log($scope.businflist);
                        

                    });
        </script>
    </head>

    <body id="page-top" style="background-color: black;" >

        <div class="card"  style="margin-left: 350px; margin-top: 200px; background-color: white; width: 400px;" >
            <div   ng-app="myapp" ng-controller="searchtrainController"  style=" padding: 30px;" >
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
     </div>                     
         
    </body>
</html>
