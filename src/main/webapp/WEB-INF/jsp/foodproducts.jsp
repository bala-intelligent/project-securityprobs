<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BK FOODCART</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="<c:url value="/resources/image/favicon.ico"/>" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>
	<!---carousel--->
	<h1 align="center">BK FOODCART</h1>
<h4 align="right"><!-- display the userId just entered -->
				Welcome ${registration.username}</h4>
	<!--row1 -->
	<header class="row">
	<div class="col-md-6 col-md-6">
		<img src="" align="center" alt="">

	</div>
	<div class="col-md-6 col-md-6">
		<img src="" alt="">
	</div>
	</header>
	<p>
		<Strong>
		<h4 align="justify">
		If a person cares for his health,it is
				difficult to find a doctor who would know what's better for him.
				-Socrates</Strong>
	    </h4>
	</p>
	
	<hr />
	<style>
hr {
	width: 100%;
	height: 8px;
	margin-left: auto;
	margin-right: auto; 
	background-color: #FF0066;
	color: #FF0066;
	border: 0 none;
}
</style>
	<!-- navigation bar -->
	<div class="navbar navbar-default row">
<div class="navbar-header">
<a class="navbar-brand" href="#">FoodCart</a>
	<ul class="nav nav-pills nav-justified">
				
				<li class="active"><a href="home">Home</a></li>
				<li class="active"><a href="about">About</a></li>
				<li class="active"><a href="http://balakannansachin5@gmail.com">Contact</a></li>
				<li class="active"><a href="frontcrud">Products</a></li>
				 <li class="dropdown  active">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Availables
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li class="active"><a href="veg">vegetarian</a></li>
          <li class="active"><a href="nonveg">non-vegetarian</a></li>
          <li class="active"><a href="snack">snacks</a></li> 
          <li class="active"><a href="bev">beverages</a></li>
          </ul>
          </li>
				<li class="active"><a href="loginpages">Login</a></li>
				<li class="active"><a href="memberShip.obj">Register here</a></li>
				<li><a href="#" class="btn btn-info btn-sm"> <span
						class="glyphicon glyphicon-shopping-cart"></span> View Cart
				</a></li>
				</ul>
		</div>
	</div>
	
	<style>
#the-slider img {
	width: 100%;
}

.navbar {
	background-color: #282828;
}

.navbar li a {
	color: white !important;
}

.navbar li a:hover {
	color: red !important;
}

.navbar-default .navbar-nav>.active>a {
	background-color: blue !important;
}

.navbar {
	padding: 10px;
}
</style>
	<!-- end of navigation bar -->
	<!---row2--->

	<div class="container">

		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">

					<img src="<c:url value="/resources/image/slider1.jpg"/>" alt="...">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/image/slider2.jpg"/>" alt="...">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="<c:url value="/resources/image/slider3.jpg"/>" alt="...">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>

	</div>

	<!---row3--->
	<div class="container">
		<div class="col-md-3 column productbox">
			<a href="veg"><img
				src="<c:url value="/resources/image/thumbnail1.jpg"/>"
				class="img-responsive"></a>
			<div class="producttitle">VEGETARIAN</div>
			<div class="productprice">
				<div class="pull-right">
					<a href="#" class="btn btn-danger btn-sm" role="button">BUY</a>
				</div>
			</div>
		</div>
		<div class="col-md-3 column productbox">
			<a href="nonveg"><img
				src="<c:url value="/resources/image/thumbnail2.jpg"/>"
				class="img-responsive"></a>
			<div class="producttitle">NON VEGETARIAN</div>
			<div class="productprice">
				<div class="pull-right">
					<a href="#" class="btn btn-danger btn-sm" role="button">BUY</a>
				</div>
			</div>
		</div>
		<div class="col-md-3 column productbox">
			<a href="snack"> <img
				src="<c:url value="/resources/image/thumbnail3.jpg"/>"
				class="img-responsive"></a>
			<div class="producttitle">SNACKS</div>
			<div class="productprice">
				<div class="pull-right">
					<a href="#" class="btn btn-danger btn-sm" role="button">BUY</a>
				</div>
			</div>
		</div>
		<div class="col-md-3 column productbox">
			<a href="bev"> <img
				src="<c:url value="/resources/image/thumbnail4.png"/>"
				class="img-responsive"></a>
			<div class="producttitle">BEVERAGES</div>
			<div class="productprice">
				<div class="pull-right">
					<a href="#" class="btn btn-danger btn-sm" role="button">BUY</a>
				</div>
			</div>
		</div>
	</div>
	<style>
.productbox {
	background-color: #ffffff;
	padding: 10px;
	margin-bottom: 10px;
	-webkit-box-shadow: 0 8px 6px -6px #999;
	-moz-box-shadow: 0 8px 6px -6px #999;
	box-shadow: 0 8px 6px -6px #999;
}

.producttitle {
	font-weight: bold;
	padding: 5px 0 5px 0;
}

.productprice {
	border-top: 1px solid #dadada;
	padding-top: 5px;
}

.pricetext {
	font-weight: bold;
	font-size: 1.4em;
}
</style>
	<%@include file="footer.jsp"%>

</body>
</html>