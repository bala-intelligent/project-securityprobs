<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view all page</title>
</head>
<body>
<form:form action="frontcrud" method="POST" commandName="foodproducts">
<h2 align="center">Product details</h2>
<table border="1" width="50%">
	 <th>productId</th>
	 <th>productname</th>
	 <th>productprice</th>
	 <th>productquantity</th>
	 <th>category</th>
	 <th>productdescription</th>
	 <c:forEach items="${foodproductsList }" var="foodproducts">
	 <tr>
	  <td>${foodproducts.productId}</td>
	  <td>${foodproducts.productname }</td>
	  <td>${foodproducts.productprice}</td>
	  <td>${foodproducts.productquantity}</td>
	  <td>${foodproducts.category}</td>
	  <td>${foodproducts.productdescription}</td>
	  <td> <input type="submit" name="frontcrud" value="Edit" /></td>
		    <td><input type="submit" name="frontcrud" value="Delete"/></td>
	  
	 </tr>
	 </c:forEach>
	</table>
	</form:form>
	<br>
	<input type="button" value="Back" onclick="javascript:history.back()"/>
</body>
</html>