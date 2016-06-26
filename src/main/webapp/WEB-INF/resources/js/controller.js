var cartApp = angular.module("cartApp", []);

var rootApp = "/ecommercewf"

cartApp.controller("cartCtrl", function($scope, $http){
		console.log("LOG");
		$scope.refreshCart = function(cartId) {
				
			$http.get(rootApp+"/rest/cart/"+ $scope.cartId).success(function(data){
				$scope.cart = data;
			});
		};
		
		$scope.clearCart = function(){
			$http.delete(rootApp+"/rest/cart/" +$scope.cartId).success($scope.refreshCart($scope.cartId));
	    };

	    $scope.initCartId = function(cartId){
	        $scope.cartId = cartId;
	        $scope.refreshCart(cartId);
	    };
	    
	    $scope.addToCart = function(productId){
	    	
	        $http.put(rootApp+'/rest/cart/add/' + productId).success(function (){
	            alert('Product successfully added to the cart!');
	        });
	        
	    };

	    $scope.removeFromCart = function(productId){
	        $http.put(rootApp+'/rest/cart/remove/' + productId).success(function(data){
	           $scope.refreshCart();
	        });
	    };

	    $scope.calGrandTotal = function(){
	        var grandTotal = 0;

	        for (var i = 0; i < $scope.cart.cartItems.length; i++){
	            grandTotal += $scope.cart.cartItems[i].totalPrice;
	        }

	        return grandTotal;
	    };
	    

});