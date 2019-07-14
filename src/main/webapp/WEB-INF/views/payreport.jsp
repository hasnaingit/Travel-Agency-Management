
<%-- 
    Document   : admindash
    Created on : Jun 15, 2019, 12:59:39 AM
    Author     : Hasnain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from healthadmin.thememinister.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 17 Sep 2017 19:40:11 GMT -->
<head>
</head>
   

    <body>
        <h2>Payment Report </h2>

      <form:form method="POST" class="form-inline" commandName="reportInputForm" action="paymentreportView">

                                            <div class="input-group mb-2 mr-sm-2">

                                                <form:input class="form-control" placeholder="Enter first date" path="firstdate" id="firstdate"/>
                                            </div>


                                            <div class="input-group mb-2 mr-sm-2">
                                                <form:input class="form-control" placeholder="Enter last Date" path="seconddate" id="seconddate"/>

                                            </div>
                                            <div class="input-group mb-2 mr-sm-2">
                                                <input type="submit" class="btn btn-outline-primary"  value="Generate Report"  />

                                            </div>


                                        </form:form>
        
        
        
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                                                $(document).ready(function () {
                                                                    var date_input = $('input[name="firstdate"]'); //our date input has the name "date"
                                                                    var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                    date_input.datepicker({
                                                                        format: 'yyyy-mm-dd',
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
                                                                    var date_input = $('input[name="seconddate"]'); //our date input has the name "date"
                                                                    var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                    date_input.datepicker({
                                                                        format: 'yyyy-mm-dd',
                                                                        container: container,
                                                                        todayHighlight: true,
                                                                        autoclose: true,
                                                                    })
                                                                })
        </script>    
        
        
    </body>



</html>