package org.amperca.myapp.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.amperca.myapp.model.Product;

public class ProductDaoClass {
	private List<Product> productList;
	public List<Product> getProductList() {
		
		Product prod1 = new Product();
		prod1.setProductName("Guitar");
		prod1.setProductCategory("Instrument");
		prod1.setProductDescription("This is a guitar");
		prod1.setProductPrice(1200);
		prod1.setProductCondition("new");
		prod1.setProductStatus("Active");
		prod1.setUnitInStock(12);
		prod1.setProductManufacturer("Gibson");
	//	prod1.setProductId("1");
		
		Product prod2 = new Product();
		prod2.setProductName("Record");
		prod2.setProductCategory("Record");
		prod2.setProductDescription("Record in a box");
		prod2.setProductPrice(51);
		prod2.setProductCondition("new");
		prod2.setProductStatus("Active");
		prod2.setUnitInStock(42);
		prod2.setProductManufacturer("Gibson");
	//	prod2.setProductId("2");
		
		Product prod3 = new Product();
		prod3.setProductName("Speaker");
		prod3.setProductCategory("Accessory");
		prod3.setProductDescription("This is a speaker");
		prod3.setProductPrice(130);
		prod3.setProductCondition("new");
		prod3.setProductStatus("Active");
		prod3.setUnitInStock(12);
		prod3.setProductManufacturer("Tama");
	//	prod3.setProductId("2");
		
		productList = new ArrayList<Product>();
		productList.add(prod1);
		productList.add(prod2);
		productList.add(prod3);
		
		return productList;
		
	}
	
	
	public Product getProductById(String productId) {
		
		for(Product product : getProductList()) {
		//	if(product.getProductId().equals(productId)) {
		//		return product;
		//	}
		}
		
		return null;
		
	}
}
