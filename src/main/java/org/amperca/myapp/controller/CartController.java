package org.amperca.myapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.amperca.myapp.dao.CartDao;
import org.amperca.myapp.dao.ProductDao;
import org.amperca.myapp.model.Cart;
import org.amperca.myapp.model.CartItem;
import org.amperca.myapp.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
@RequestMapping("/rest/cart")
public class CartController {
	
	private CartDao cartDao;
	private ProductDao productDao;
	
	@Autowired
	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}
	
	@Autowired
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	@RequestMapping(value="/{cartId}", method=RequestMethod.GET)
	public @ResponseBody Cart read(@PathVariable(value="cartId") String cartId) {
		return cartDao.read(cartId);
	}
	
	
	@RequestMapping(value="/{cartId}", method=RequestMethod.PUT)
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void update(@PathVariable(value="cartId") String cartId, @RequestBody Cart cart) {
		 cartDao.update(cartId, cart);
	}
	
	@RequestMapping(value="/{cartId}", method=RequestMethod.DELETE)
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void delete(@PathVariable(value="cartId") String cartId) {
		cartDao.delete(cartId);
	}
	
	@RequestMapping(value="/add/{productId}", method=RequestMethod.PUT)
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void addItem(@PathVariable(value="productId") int productId, HttpServletRequest request) {
		String sessionId = request.getSession(true).getId();
		Cart cart = cartDao.read(sessionId);
		
		if(cart == null) {
			cart = cartDao.create(new Cart(sessionId));
		}
		
		Product product = productDao.getProductById(productId);
		
		if(product == null) {
			throw new IllegalArgumentException(new Exception());
		}
		
		cart.addCarItem(new CartItem(product));
		
		
		cartDao.update(sessionId, cart);
	}
	
	@RequestMapping(value="/remove/{productId}", method=RequestMethod.PUT)
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeItem(@PathVariable(value="productId") int productId, HttpServletRequest request) {
		String sessionId = request.getSession(true).getId();
		Cart cart = cartDao.read(sessionId);
		
		if(cart == null) {
			cart = cartDao.create(new Cart(sessionId));
		}
		
		Product product = productDao.getProductById(productId);
		
		if(product == null) {
			throw new IllegalArgumentException(new Exception());
		}
		
		cart.removeCartItem(new CartItem(product));
		
		cartDao.update(sessionId, cart);
	}
	
	@ExceptionHandler(IllegalArgumentException.class)
	@ResponseStatus(value=HttpStatus.BAD_REQUEST, reason="Illegal request please verify your payload")
	public void handleClientErrors(Exception e){}
	
	@ExceptionHandler(Exception.class)
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR, reason="Internal Server Error")
	public void handleServerErrors(Exception e){}
	
	
	
	
	

}
