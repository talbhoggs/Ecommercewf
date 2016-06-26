package org.amperca.myapp.dao;

import java.util.List;

import org.amperca.myapp.model.Product;

public interface ProductDao {
	
	void addProduct(Product product);
	Product getProductById(int id);
	List<Product> getAllProducts();
	void deleteProduct(int id);
	void editProduct(Product product);

}
