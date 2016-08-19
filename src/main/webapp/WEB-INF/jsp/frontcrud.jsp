<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Foodproduct management</title>
</head>
<body>
	<h1>Foodproducts data</h1>
	Category:
	<form:form action="viewall.do" method="POST" commandName="foodproducts">
	
	<form:select path="category">
   <form:option value="vegetarian">vegetarian</form:option>
    <form:option value="non-vegetarian">non-vegetarian</form:option>
    <form:option value="snacks">snacks</form:option>
    <form:option value="beverages">beverages</form:option>
    </form:select>
		<table>
		 <tr>
		 <td>productId</td>
		 <td><form:input path="productId" id="productId"/></td>
		 </tr>
		 <tr>
		 <td>Productname</td>
		 <td><form:input path="productname"/></td>
		 </tr>
		 <tr>
		 <td>Productdescription</td>
		 <td><form:input path="productdescription"/></td>
		 </tr>
		 <tr>
		 <td>Productprice</td>
		 <td><form:input path="productprice"/></td>
		 </tr>
		 <tr>
		 <td>Productquantity</td>
		 <td><form:input path="productquantity"/></td>
		 </tr>
		 
		 <tr>

		 <tr>
		   <td colspan="2">
		    <input type="submit" name="action" value="Add" />
		    <input type="submit" name="action" value="Edit" />
		    <input type="submit" name="action" value="Delete"/>
		   <input type="submit" name="action" value="Search"/>
		   </td>
		 </tr>
		</table>
		
		
	</form:form>
	<br>
	
	<!-- table contents -->
</body>
</html>