<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/template/header.jsp"%>


	<div class="container-wrapper">
		<div>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<p class="pull-right">Welcome ${pageContext.request.userPrincipal.name} | <a href='<c:url value="/login?logout" />'>log out</a></p>
		</c:if>
		
		</div>
		<h3>Administrator Page</h3>
		<p>This is the adminstrator page</p>
		

		
		<h3><a href='<c:url value="/admin/productInventory" />'>Product Inventory</a></h3>
	</div>

<!-- /.container -->

<%@include file="/WEB-INF/template/footer.jsp"%>
