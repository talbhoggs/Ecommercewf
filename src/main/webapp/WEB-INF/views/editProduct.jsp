<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/template/header.jsp"%>


	<div class="container-wrapper">
		<h3>Edit Product</h3>
		<form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct" method="post" commandName="product" enctype="multipart/form-data">
			<form:hidden path="productId" value="${product.productId}"/>
			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="productName" class="form-control" value="${product.productName}" />  <form:errors path="productName" cssStyle="color:#ff0000"/>
			</div>
			<div class="form-group">
				<label for="name">Category</label> <label class="checkbox-inline"></label>
				<form:radiobutton path="productCategory" value="instrument" />
				Instrument</label> <label class="checkbox-inline"></label>
				<form:radiobutton path="productCategory" value="record" />
				Record</label> <label class="checkbox-inline"></label>
				<form:radiobutton path="productCategory" value="accessory" />
				Accessory</label>
			</div>
			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea path="productDescription" class="form-control" value="${product.productDescription}"/>
			</div>
			<div class="form-group">
				<label for="price">Price</label>
				<form:input path="productPrice" class="form-control" value="${product.productPrice}"/> <form:errors path="productPrice" cssStyle="color:#ff0000"/>
			</div>

			<div class="form-group">
				<label for="condition">Condition</label> <label
					class="checkbox-inline"></label>
				<form:radiobutton path="productCondition" value="new" />
				New</label> <label class="checkbox-inline"></label>
				<form:radiobutton path="productCondition" value="used" />
				Used</label> <label class="checkbox-inline"></label>
			</div>

			<div class="form-group">
				<label for="status">Status</label> <label class="checkbox-inline"></label>
				<form:radiobutton path="productStatus" value="active" />
				Active</label> <label class="checkbox-inline"></label>
				<form:radiobutton path="productStatus" value="inactive" />
				InActive</label> <label class="checkbox-inline"></label>
			</div>

			<div class="form-group">
				<label for="unitInStock">Unit In Stock</label>
				<form:input path="unitInStock" class="form-control" value="${product.unitInStock}"/> <form:errors path="unitInStock" cssStyle="color:#ff0000"/>
			</div>

			<div class="form-group">
				<label for="manufacturer">Manufacturer</label>
				<form:input path="productManufacturer" class="form-control"  value="${product.productManufacturer}"/>
			</div>
			
			<div class="form-group">
				<label for="productImage">Upload Picture</label>
				<form:input path="productImage" type="file" class="form:input-large" />
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
			<a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
		</form:form>
	</div>

<!-- /.container -->

<%@include file="/WEB-INF/template/footer.jsp"%>
