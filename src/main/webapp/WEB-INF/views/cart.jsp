<%@include file="/WEB-INF/template/header.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<div class="container-wrapper">
		<section class="container">

			<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">


				<div>
					<a href="<spring:url value="/productList" />"
						class="btn btn-default pull-right">Continue Shopping</a>
				</div>
				<br /> <br /> <br />


				<table class="table table-hover">
					<tr>
						<th>Product</th>
						<th>Unit Price</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Action</th>
					</tr>
					<tr ng-repeat="item in cart.cartItem">
						<td>{{item.product.productName}}</td>
						<td>{{item.product.productPrice}}</td>
						<td>{{item.quantity}}</td>
						<td>{{item.totalPrice * item.quantity}}</td>
						<td><a href="#" class="label label-danger"
							ng-click="removeFromCart(item.product.productId)"><span
								class="glyphicon glyphicon-remove"></span>remove</a></td>
					</tr>
					<tr>
						<th></th>
						<th></th>
						<th>Grand Total</th>
						<th>{{cart.grandTotal}}</th>
						<th></th>
					</tr>
				</table>

				<div>
					<a class="btn btn-danger pull-right" ng-click="clearCart()"><span
						class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a> <a
						href="<spring:url value="/order/${cartId}" />"
						class="btn btn-success pull-left"><span
						class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
				</div>


			</div>
		</section>

		<!-- My -->

	</div>

<%@include file="/WEB-INF/template/footer.jsp"%>