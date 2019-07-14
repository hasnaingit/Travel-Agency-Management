
<%-- 
    Document   : admindash
    Created on : Jun 15, 2019, 12:59:39 AM
    Author     : Hasnain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from healthadmin.thememinister.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 17 Sep 2017 19:40:11 GMT -->
<head>
</head>
   

    <body>
        <h2>Report example</h2>

        <form:form method="POST" action="reportView" commandName="reportInputForm">

            <table id="reptbl" width="350px" border="1">
                <tr>
                    <td colspan="2"><form:errors path="title" cssClass="error"/></td> </tr>
                <tr>
                    <td>
                        Enter Report Title <form:input path="title" id="title"/>
                        <input type="submit"  value="Generate Report"  />
                    </td> 

                </tr>
            </table>  
        </form:form>
    </body>



</html>