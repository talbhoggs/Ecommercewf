package org.amperca.myapp.model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
	private String cartId;
	private Map<Integer, CartItem> cartItems;
	private double grandTotal;
	
	public Cart() {
		cartItems = new HashMap<Integer, CartItem>();
		grandTotal = 0;
	}
	
	public Cart(String cartId) {
		this();
		this.cartId = cartId;
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public Map<Integer, CartItem> getCartItem() {
		return cartItems;
	}

	public void setCartItem(Map<Integer, CartItem> cartItem) {
		this.cartItems = cartItem;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	
	public void addCarItem(CartItem item) {
		
		int productId = item.getProduct().getProductId();
		
		if(!cartItems.containsKey(productId)) {
			cartItems.put(productId, item);
		}
		else {
			CartItem existingItem = cartItems.get(productId);
			
			int existingItemQuantity = existingItem.getQuantity();
			int itemQuantity = item.getQuantity();
			
			existingItem.setQuantity(existingItemQuantity + itemQuantity);
			
			cartItems.put(productId, existingItem);
		}
		
		updateGrandTotal();
	}
	
	public void removeCartItem(CartItem item) {
		int key = item.getProduct().getProductId();
		
		cartItems.remove(key);
		
		updateGrandTotal();
	}
	
	public void updateGrandTotal() {
		grandTotal = 0;
		for(CartItem item : cartItems.values()) {
			
			grandTotal = grandTotal + item.getTotalPrice()*item.getQuantity();
		}
	}
	
	
}
