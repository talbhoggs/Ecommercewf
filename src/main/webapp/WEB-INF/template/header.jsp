<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="template">
    <meta name="author" content="amperca@ph.ibm.com">
    <link rel="icon" href="../../favicon.ico">

    <title>index</title>
    
	<!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/boostrap.cerulean.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet">

  </head>

  <body ng-app="cartApp">

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Camper E-commerce</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-right">
          <ul class="nav navbar-nav">
          			<li><a href="<spring:url value="/cart" />" class="btn btn-info">
				          <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
				        </a></li>
					<li><a href="<c:url value="/" />">Home</a></li>
					<li><a href="<c:url value="/productList" />">Products</a></li>
					<li><a href="<c:url value="/admin" />">Admin</a></li>
					<li><a href="<c:url value="/about" />">About</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    
    <div class="container">
	