<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    <%@include file="includes.jsp" %>
<!doctype html>
<html>
<head>
	<title>My Website</title>
	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</head>
<body>
<div class="container">
<a href="${flowExecutionUrl}&_eventId_foodproducts">Home</a>
<form:form class="form-horizontal"  modelAttribute="registration"  role="form" method="POST" >
  <fieldset>
    <div id="legend">
      <legend class="">Register</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <form:input id="username"  path="username" placeholder="" class="input-xlarge" required="true" />
        <p class="help-block">Username can contain any letters or numbers, without spaces</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <form:input  id="email" name="email" path="email" placeholder="" class="input-xlarge" required="true"/>
        <p class="help-block">Please provide your E-mail</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
 <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="phonenumber">Phone number</label>
      <div class="controls">
        <form:input  id="phonenumber" name="phonenumber" path="phonenumber" placeholder="" class="input-xlarge" required="true"/>
        <p class="help-block">Please provide your Phone-Number</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
    
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <form:input type="password" id="password" name="password"  path="password" placeholder="" class="input-xlarge" required="true"/>
        <p class="help-block">Password should be at least 4 characters</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="password_confirm">Password (Confirm)</label>
      <div class="controls">
        <form:input type="password" id="password_confirm" name="password_confirm" path="confirmpassword" placeholder="" class="input-xlarge" required="true"/>
        <p class="help-block">Please confirm password</p>
        <!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}" var="err">
					  <div>
					  <span>${err.text}</span>
					  </div>
					</c:forEach><br />
      </div>
    </div>
 
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success"  name="_eventId_submit" type="submit" value="Submit">Register</button>
      </div>

<!--       <input name="_eventId_submit" type="submit" value="Submit" /><br /> -->
      
    </div>
    <div class="controls">
	     <button class="btn">Cancel</button>
	</div>
  </fieldset>
</form:form>
</div>
	<!--  <div class="modal-footer">-->
	
<!-- </div> -->
<!-- </div> -->
<!-- </div> -->
<%@include file="footer.jsp"%>
</body>
</html>