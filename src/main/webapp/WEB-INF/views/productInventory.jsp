<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/template/header.jsp"%>


	<div class="container-wrapper">
		<h3>Products Inventory</h3>
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th>Photo</th>
					<th>Name</th>
					<th>Category</th>
					<th>Description</th>
					<th>Price</th>
					<th>info</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="product">
						<td><img src="<c:url value="/resources/images/${product.productId}.png" />" /></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productDescription}</td>
						<td>${product.productPrice}</td>
						<td>
							<a href='<spring:url value="/productList/viewProduct/${product.productId}" />'><span class="glyphicon glyphicon-info-sign"></span></a>
							<a href='<spring:url value="/productList/deleteProduct/${product.productId}" />'><span class="glyphicon glyphicon-remove"></span></a>
							<a href='<spring:url value="/admin/productInventory/editProduct/${product.productId}" />'><span class="glyphicon glyphicon-pencil"></span></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href='<spring:url value="/admin/productInventory/addProduct" />'>Add Product</a>
	</div>

<!-- /.container -->

<%@include file="/WEB-INF/template/footer.jsp"%>
