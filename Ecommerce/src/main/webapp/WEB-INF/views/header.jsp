<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="./resources/images/Arun_brandings/Hatsun_icon.jpg">
<title>Home_Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<style type="text/css">
  .backgroundclr
  { 
    background-color: #59503e;
  }
</style>

<!-- datatable -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
<link rel="stylesheet" type="text/css" href="./resources/css/dataTables.bootstrap.min.css"/>

<link rel="stylesheet" type="text/css" href="./resources/css/ss.css"/>


<link rel="stylesheet" type="text/css" href="./resources/css/datatables.css"/>


<link rel="stylesheet" type="text/css" href="./resources/css/datatables.min.css"/>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  <script type="text/javascript" src="./resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="./resources/js/dataTables.bootstrap.min.css"></script>

<script type="text/javascript">
$(document).ready(function(){
    $('.table').DataTable();
});
</script>
<!-- end -->
</head>
<body>
<nav class="backgroundclr">
	<div class="container-fluid">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
							
			<a class="navbar-brand" href="./">				
			<%-- 	<img src='<c:url value="./resources/images/weblog1.jpg" />' class="img-circle" width="50px" height="25px" /> --%>
			<%-- <img src="${pageContext.request.contextPath}/resources/images/weblog1.jpg" class="img-circle" width="50px" height="25px"/> --%>
			</a>
		</div>		
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
			  <li ><a href="" style="font-size:20px;color:white;font-family:cursive">Home</a></li>
				<li><a href="" style="font-size:20px;color:white;font-family:cursive">AboutUs</a></li>
				<li class="dropdown" style="font-family:cursive"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"  style="font-size:20px;color:white">Categorys <span class="caret"></span></a>
					<ul class="dropdown-menu">
									
						<c:forEach items="${clist}" var="p">
						 <li><a href="categoryproductlist?id=${p.categoryid}">${p.categoryname}</a></li> 
						 <%-- <li><a href='<c:url value="categoryproductlist?id=${p.categoryid}">${p.categoryname}"/>'</a></li> --%>
						</c:forEach>
						</li>
						
					</ul>
					
					<security:authorize access="hasRole( 'ROLE_ADMIN' )"> 
					 <li style="font-family:cursive"><a href="<c:url value="/admin/add"/>" role="button" aria-haspopup="true"
					aria-expanded="false" style="font-size:20px;color:white">ManageProducts</a>
					
					<li style="font-family:cursive"><a href="<c:url value="/admin/add1"/>" role="button" aria-haspopup="true"
					aria-expanded="false" style="font-size:20px;color:white">ManageCategory</a>
								
					</li>
					
								
					</li>
					</security:authorize>
			</ul>
		<%-- --%>
			
				<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                 </c:if>
			  <ul class="nav navbar-nav navbar-right">
			  <c:if test="${pageContext.request.userPrincipal.name == null }">
					<li >
					<a href="<c:url value="admin/add"/>"  style="font-size:20px;color:white;font-family:cursive">Login</a></li>
					
				<li style="font-family:cursive">
				<a href=' <c:url value="/reg" />' style="font-size:20px;color:white;font-family:cursive">Signup</a>
				</li>
				
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
                               <li><a style="font-size:20px;color:white;font-family:cursive">Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	              				<li><a href='<c:url value="/logout" />' style="font-size:20px;color:white;font-family:cursive">Signout</a></li>
                 </c:if>
				 
				</ul>
				 
		</div>		
	</div>
</nav> 
</body>
</html>