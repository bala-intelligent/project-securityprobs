<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
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
<h1 align="center">NON-VEGETARAINS</h1>
<hr/>
	  <style>
	  hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:#FF0066;
color:#FF0066;
border: 0 none;
}
	  </style>
<!--product display--->
<!--row1-->
<div class="container">
      <div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/butter chicken.jpg"/>" class="img-responsive">
    <div class="producttitle"> product 1</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
<div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/chicken biriyani.jpg"/>" class="img-responsive">
    <div class="producttitle">Product 2</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
<div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/chilli chicken.jpg"/>" class="img-responsive">
    <div class="producttitle">Product 3</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
<div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/fish curry.jpg"/>" class="img-responsive">
    <div class="producttitle">Product 4</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
</div>
<!--row2-->
<div class="container">
      <div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/fish kurma.jpg"/>" class="img-responsive">
    <div class="producttitle">Product 1</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
<div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/mutton biriyani.jpg"/>" class="img-responsive">
    <div class="producttitle">Product 2</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
<div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/mutton fry.jpg"/>" class="img-responsive">
    <div class="producttitle">Product 3</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
<div class="col-md-3 column productbox">
    <img src="<c:url value="/resources/image/product-nonveg/fish nuggets.jpg"/>" class="img-responsive">
    <div class="producttitle">Product 4</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext">Rs.00</div><a href="#">
          <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
        </a><div class="pull-right"> <a href="#" class="btn btn-danger btn-xs" role="button">
          <span class="glyphicon glyphicon-eye-open"></span>view
        </a></div></div>
</div>
</div>
<style>
.productbox {
    background-color:#ffffff;
	padding:10px;
	margin-bottom:10px;
	-webkit-box-shadow: 0 8px 6px -6px  #999;
	   -moz-box-shadow: 0 8px 6px -6px  #999;
	        box-shadow: 0 8px 6px -6px #999;
}

.producttitle {
    font-weight:bold;
	padding:5px 0 5px 0;
}

.productprice {
	border-top:1px solid #dadada;
	padding-top:5px;
}

.pricetext {
	font-weight:bold;
	font-size:1.4em;
}
</style>

    <%@include file="footer.jsp" %>
</body>
</html>
