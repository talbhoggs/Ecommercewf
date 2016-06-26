<%@include file="/WEB-INF/template/header.jsp"%>

	<div class="container-wrapper col-md-8 col-md-offset-2 col-xs-12" >
		<h3>Login</h3>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		
		<form name="loginForm"
			action="<c:url value="/login" />" method="post">

			<c:if test="${not empty error}">
				<div class="error" style="color: #ff0000;">${error}</div>
			</c:if>

			<div class="form-group">
				<label for="username">User Name</label> <input type="text" class="form-control" id="username" name="username" placeholder="UserName">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input type="password" class="form-control" id="password" name="password" placeholder="Password">
			</div>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				
			<input type="submit" value="Submit" class="btn btn-default">
			<br />
			<br />
			<p>Admin users can add, edit and delete a product.</p>
			<p>You can use username/password (admin/admin) to check the functionality.</p>
		</form>


	</div>

<%@include file="/WEB-INF/template/footer.jsp"%>