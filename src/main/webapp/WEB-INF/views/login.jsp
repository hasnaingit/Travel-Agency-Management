<%-- 
    Document   : login
    Created on : Nov 20, 2018, 3:44:20 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Slide Login Form template Responsive, Login form web template, Flat Pricing tables, Flat Drop downs Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

	<!-- Custom Theme files -->
	<link href="resources/loginpage/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="resources/loginpage/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Custom Theme files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    
    <body>

<!-- main -->
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1> Login Form</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				<form action="perform_login" method="post">
					<div class="icon1">
						<span class="fa fa-user"></span>
                                                
                                                
                                                <input type="email" placeholder="Email Address" required="required" name="usename" autofocus="autofocus"/>
					</div>
					<div class="icon1">
						<span class="fa fa-lock"></span>
                                                <input type="password" placeholder="Password" required="required" name="userpassword" autofocus="autofocus" />
					</div>
					<div class="login-check">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i> Keep me logged in</label>
					</div>
					<div class="bottom">
						<input type="submit" class="btn btn-primary btn-block" value="Login"></input>
                                                 <a class="btn btn-primary btn-block" href="<%=request.getContextPath() %>">Home</a>
					</div>
					<div class="links">
						
						<p class="right"> <b class="btn"><a href="signup">New User? Register</a> </b></p>
						<div class="clear"></div>
					</div>
				</form>	
			</div>
			<div class="social">
				<ul>
					<li>or login using : </li>
					<li><a href="#" class="facebook"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#" class="twitter"><span class="fa fa-twitter"></span></a></li>
					<li><a href="#" class="google"><span class="fa fa-google-plus"></span></a></li>
				</ul>
			</div>
		</div>
		
		
	</div>
</div>	
<!-- //main -->

</body>
    
    
    
    
    
    
    
    
    
    
    
    
    
<!--    <body class="bg-dark">    
        <div class="container">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header">Login</div>
                <div class="card-body">
                    <form action="perform_login" method="post">
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus" name="usename">
                                <label for="inputEmail">Email address</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required" name="userpassword">
                                <label for="inputPassword">Password</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="remember-me">
                                    Remember Password
                                </label>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary btn-block" value="Login"></input>
                        <a class="btn btn-primary btn-block" href="<%=request.getContextPath() %>">Home</a>
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="signup">Register an Account</a>
                        <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
                    </div>
                </div>
            </div>
        </div>



         Bootstrap core JavaScript
        <script src="resources/jquery/jquery.min.js"></script>
        <script src="resources/bootstrap/js/bootstrap.bundle.min.js"></script>

         Core plugin JavaScript
        <script src="resources/jquery-easing/jquery.easing.min.js"></script>
    </body>-->
</html>
