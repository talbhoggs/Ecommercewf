<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/template/header.jsp"%>


	<div class="container-wrapper">
		<h3>Products</h3>
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th>Name</th>
					<th>Category</th>
					<th>Description</th>
					<th>Price</th>
					<th>info</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
					<tr>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productDescription}</td>
						<td>${product.productPrice}</td>
						<td><a href='<spring:url value="/productList/viewProduct/${product.productId}" />'>Product Details <span class="glyphicon glyphicon-info-sign"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

<!-- /.container -->

<%@include file="/WEB-INF/template/footer.jsp"%>
