<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/template/header.jsp"%>

		<div class="container-wrapper">
			<h3>Product Detail</h3>
	
			<div class="container">
				<div class="row">
					<div class="col-md-5"><img src="<c:url value="/images/${product.productId}.png" />" /></div>
					<div class="col-md-5">
						<h4>${product.productName}</h4>
						<p>${product.productDescription}</p>
						<p><strong>Manufacturer : </strong>${product.productManufacturer}</p>
						<p><strong>Condition : </strong>${product.productCondition}</p>
						<p><strong>Price : </strong>${product.productPrice}</p>
						
						<br />
						 <c:set var = "role" scope="page" value="${param.role}" />
	                    <c:set var = "url" scope="page" value="/productList" />
	                    <c:if test="${role='admin'}">
	                        <c:set var="url" scope="page" value="/admin/productInventory" />
	                    </c:if>
	
	                    <p ng-controller="cartCtrl">
	                        <a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
	                        <a class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</a>
	                        <a class="btn btn-default" href="<spring:url value="/cart" />"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
	                    </p>
					</div>
				</div>
	
			</div>
		</div>

<!-- /.container -->

<%@include file="/WEB-INF/template/footer.jsp"%>