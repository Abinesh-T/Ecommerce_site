<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="./resources/images/Arun_brandings/Hatsun_icon.jpg">
<title>RegisterPage</title>
<!-- To Access the Bootstrap link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href=".resources/css/registerpage.css" rel="stylesheet"/>
<style type="text/css">
  .backgroundclr
  { 
    background-color: #8FBC8F;
  }
</style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Registration form here -->
<div class="container" style="font-family: cursive">
    <center><h3 class="well" style="font-family: cursive;font-style: italic;color:red">SignUp</h3></center>
	<div class="col-lg-12 well">
	<div class="row">
			<form  action="registerpage" method="post">
					<div class="col-sm-12">
						<div >
							<div class="col-sm-6 form-group">
								<label style="font-family:cursive">USERID</label>
								<input type="text" placeholder="Enter Your ID Here.." class="form-control" style="font-family:cursive" pattern="[0-9]+" required name="userid">
							</div>
							<div class="col-sm-6 form-group">
								<label style="font-family:cursive">NAME</label>
								<input type="text" placeholder="Enter  Name Here.." class="form-control" style="font-family:cursive" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="username">
							</div>
						</div>	
						<div class="col-sm-6 form-group">
								<label style="font-family:cursive" >PASSWORD</label>
								<input type="password" placeholder="Enter  Password Here.." class="form-control" style="font-family:cursive"  pattern="[A-Za-z]+" required name="userpass">
							</div>
						</div>					
						<div class="form-group">
							<label style="font-family:cursive">ADDRESS</label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control" style="font-family:cursive" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="useraddress"></textarea>
						</div>	
						<div >
							<div class="col-sm-4 form-group">
								<label style="font-family:cursive">EMAIL</label>
								<input type="text" placeholder="Enter Email  Here.." class="form-control" style="font-family:cursive" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required name="usermail">
							</div>	
							<div class="col-sm-4 form-group">
								<label style="font-family:cursive">AGE</label>
								<input type="text" placeholder="Enter Age Here.." class="form-control" style="font-family:cursive" required name="userage">
							</div>	
							<div class="col-sm-4 form-group">
								<label style="font-family:cursive">CITY</label>
								<input type="text" placeholder="Enter City Code Here.." class="form-control" style="font-family:cursive" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="usercity">
							</div>		
						</div>
							
							
						</div>						
					<div class="form-group">
						<label style="font-family:cursive">PHONE NUMBER</label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control" style="font-family:cursive" pattern="^\{10}$" required name="userphone">
					</div>		
						
					<div class="form-group">
						<label style="font-family:cursive">GENDER</label>
						<input type="text" placeholder="Enter Gender Here.."  class="form-control" style="font-family:cursive" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required name="usergen">
						
					</div>
					
					<center>
					<input type="submit" class="btn btn-lg btn-info" style="font-family:cursive" value="REGISTER"></input>	</center>				
					</div>
				</form> 
				</div>
	</div>
	 <!-- Footer of the webpages -->

 <jsp:include page="footer.jsp"></jsp:include>
	
	</div>
</body>
</html>