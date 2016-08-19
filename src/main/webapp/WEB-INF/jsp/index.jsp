<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html>
<body>
<h2>Hello World!</h2>
<!-- <a href="soru">frond end</a> -->
<!-- <a href="food">click here</a> -->
<!-- <a href="register">register</a> -->
<a href="singleUpload">singleupload</a>
<a href="multipleUpload">multipleupload</a>
<a href="admin/abc">security</a>
<div class="content">
			<fieldset>
				<legend>Navigation menu</legend>
 
				<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "memberShip" is mapped in FlowController mapping-->
				<a href="memberShip.obj" style="margin:50;">Become Member</a>
			</fieldset>
		</div>
<!--<form action="upload/process" method="POST" enctype="multipart/form-data">
File: <input type="file" name="file1"/>
<input type="submit" value="Upload"/>
</form>-->
</body>
</html>
