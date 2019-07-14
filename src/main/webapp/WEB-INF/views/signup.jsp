
<%-- 
    Document   : addcategory
    Created on : Nov 22, 2018, 4:37:59 PM
    Author     : User
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <style>
            body {
	background:url('resources/images/sup.jpg') ;font-family: 'Open Sans', sans-serif; background-position: center;}
        .headings{  border-radius: 25px;border: 2px solid white;padding: 15px;  width: 350px; height: 40px; margin-left: 100px;
                    background-color: black; color:greenyellow;  }
.w3{ height: 450px; width: 550px; border: 2px solid cyan;border-radius: 25px; margin-left: 60px; }
.inp{width:250px; box-sizing: border-box; border: 2px solid black; border-radius: 6px; font-size: 20px; background-color: white; padding: 8px 10px 8px 10px; -webkit-transition: width 0.4s ease-in-out;transition: width 0.4s ease-in-out; margin-left: 50px;margin-top: 10px;}
   .inp:focus{ width: 90%;}  
   .button { background-color: cyan; border: none; color: white; padding: 10px 30px; text-align: center; text-decoration: none;display: inline-block; font-size: 20px; margin-left: 50px; margin-bottom: 10px; -webkit-transition-duration: 0.4s;  transition-duration: 0.4s;  cursor: pointer;}
.button2 { background-color: skyblue;  color: black;  border: 2px solid #008CBA;}.button2:hover { background-color: blue; color: white;}

 .buton { background-color: cyan; border: none; color: white; padding: 10px 30px; text-align: center; text-decoration: none;display: inline-block; font-size: 20px; margin-left: 50px; -webkit-transition-duration: 0.4s;  transition-duration: 0.4s;  cursor: pointer;}
.buton3 { background-color: lightskyblue;  color: black;  border: 2px solid #008CBA;}.buton3:hover { background-color: blue; color: white;}
.jip{float: right; opacity: 0.5;}
#myDIV {
  width: 300px;
  height: 50px;
  background: red;
  -webkit-animation: mymove 2s infinite; /* Safari 4.0 - 8.0 */
  animation: mymove 2s infinite;
}
@-webkit-keyframes mymove {
  50% {background-color: blue;}
}
@keyframes mymove {
  50% {background-color: blue;}
}
        </style>

<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">-->
    </head>
    <body>
  
        <div  id="myDIV" class="headings">
            <h1 >Register Here</h1>
            
        </div>
         <div class="jip">
			<img src="resources/images/fly.gif" alt="images">
		</div><br></br>
        
	<div class="w3">
          
		<div class="signin-agile">
			
                             <form:form modelAttribute="urm" action="reguser">

                      
                                 <form:input  class="inp" type="text"  placeholder="Username" id="name" autofocus="autofocus" path="username" required="true"></form:input><br></br>
                                 
                               <form:input  class="inp" type="text" placeholder="Email" id="inputEmail"  path="emailid" required="true"></form:input><br></br>
                           
                                <form:input class="inp" type="password" id="pass"
                                            placeholder="New Password"  path="password" required="true"></form:input><br></br>
                                   
                           
                                
                                <form:input class="inp" type="text" id="phone"
                                            placeholder="Phone Number"  path="phone"  required="true"></form:input><br></br>
                                   
                                
                                <button id="signupbutton" class="button button2" type="submit">Sign Up</button> 
                          

                    </form:form>
                                <hr>
                          
                            
                        <a class="buton buton3 " href="login">Login Page</a>
                       
                 
                 
		</div>
		
		
	</div>
       
</body>
    
    


</html>
