<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Invoice - Organic Shopping</title>
        <style type="text/css">
            #emailinvoicebtn, #continuebutton {
                background-color: #9ccc65;
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);
            }

            #emailinvoicebtn:HOVER, #continuebutton:HOVER {
                color: #ffffff;
                background-color: #aed581;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);
            }

            #emailbox:FOCUS {
                border: 2px solid #9ccc65;
                border-radius: 5px;
            }

            #welldiv {
                background-color: #dcedc8;
                padding: 20px;
                display: inline-block;
            }

            #prodimage {
                width: 100px;
                height: 125px;
            }

            #jumbotrondiv {
                background-color: #dcedc8;
                width: 80%;
                border-radius:10px;
            }

            .form-control:FOCUS {
                border: 2px solid #9ccc65;
            }
        </style>
        <script src="resources/js/angular.js"></script>

        <script type="text/javascript">
            var paylist = ${addressobject};
            
            angular.module('organocartpackage', []).controller('InvoiceController',
                    function ($scope) {
                        $scope.citems = paylist;
                    
                        console.log($scope.citems);
                    });
        </script>
    </head>
   
        <body ng-app="organocartpackage" ng-controller="InvoiceController">
       
            <div class="row" style="min-height: 400px;">
                <div id="welldiv" style="border-radius: 5px;"
                     class="col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                    <div class="row">
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <h1>Thank you For Travelling with Us</h1>
                            <address>
                                
                                <h2>  Your Payment on : {{citems.payfor}}</h2> <br>
                                <h3>  Your Payment id is : {{citems.payid}}</h3> <br>
                                
                                <h3> your booking id     {{citems.bookingid}}</h3> <br>
                               
                                <h1> total price : {{citems.amount}} </h1>
                        
                             
                            </address>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4 text-right">
                            <p>
                                <em>Date:${sessionScope.Date}</em>
                            </p>
                        </div>
                    </div>
                   
                    <a href="buyproductpage">
                        <button id="editbuttons" type="submit" class="btn">Book anothe Package</button>
                    </a>
                </div>
            </div>
       
     
    </body>


</html>
