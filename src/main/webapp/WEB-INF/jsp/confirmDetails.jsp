<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_foodproducts">Home</a><br /> <br />
			<sf:form modelAttribute="registration">
				<sf:label path="username">UserName:</sf:label>${registration.username}
				<br />
				<sf:label path="email">Email Id:</sf:label>${registration.email}
					<br />
				<br />
				<sf:label path="phonenumber">Phone number :</sf:label>${registration.phonenumber}
					<br />
				<sf:label path="password">Password:</sf:label>${registration.password}
					<br />
				<sf:label path="confirmpassword">Confirm password:</sf:label>${registration.confirmpassword}
					<br />
				<br />
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="confirmDetails" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html>