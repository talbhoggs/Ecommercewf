package org.amperca.myapp.dao;

import java.util.HashMap;
import java.util.Map;

import org.amperca.myapp.model.Cart;
import org.springframework.stereotype.Repository;

@Repository
public class CartDaoImpl implements CartDao {
	
	private Map<String, Cart> listOfCarts;
	
	public CartDaoImpl() {
		listOfCarts = new HashMap<String, Cart>();
	}
	
	@Override
	public Cart create(Cart cart) {
		
		if(listOfCarts.keySet().contains(cart.getCartId())){
			throw new IllegalArgumentException("Cannot create Cart");
		}
		
		listOfCarts.put(cart.getCartId(), cart);
			
		return cart;
	}

	@Override
	public Cart read(String cartId) {
		return listOfCarts.get(cartId);
	}

	@Override
	public void update(String cartId, Cart cart) {
		if(!listOfCarts.keySet().contains(cartId)) {
			throw new IllegalArgumentException("Cannot update Cart " + cartId + " does not exist !!");
		}// TODO Auto-generated method stub
		listOfCarts.put(cartId, cart);
	}

	@Override
	public void delete(String cartId) {
		
		if(!listOfCarts.keySet().contains(cartId)) {
			throw new IllegalArgumentException("Cannot delete Cart " + cartId + " does not exist !!");
		}
		
		listOfCarts.remove(cartId);

	}

}
