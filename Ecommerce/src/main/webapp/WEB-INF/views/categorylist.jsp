<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
	 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta charset="utf-8" />
	<link rel="icon" href="./resources/images/Arun_brandings/Hatsun_icon.jpg">
<title>Category_list</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/searching.css"/>
</head>

<body>
	<jsp:include page="header.jsp"/>
<br/>
<br>
<h3 style="font-family: cursive">CategotyList</h3>
<div class="container" style="font-family: cursive">
<div class="row">
<input type="text" id="myInput" onkeyup="myFunction()" style="font-family: cursive" placeholder="Search for names.." title="Type in a name">

<table id="myTable" style="font-family: cursive">
  <tr class="header">
       <th class="hidden-xs">ID</th>
                       <th>Name</th>
  </tr>
 <tbody>
                       <tbody>
                         
                         <c:forEach items="${clist}" var="p">
                         <tr>
                           <td>${p.categoryid}</td>
                           <td>${p.categoryname}</td>
                             
                         
                           
                           <tr>       
                         </c:forEach>
                       </tbody>
               </table>
           
             </div>
             <div class="panel-footer" style="font-family: cursive">
               <div class="row">
                 <div class="col col-xs-4"><a href="./add">BACK</a>
                 </div>
                 </div>
                 </tbody>
</table>

<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
  </div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>