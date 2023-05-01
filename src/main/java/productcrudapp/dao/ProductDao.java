package productcrudapp.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	// Create Product 
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	// Getting all Product
	public java.util.List<Product> getProducts() {
		java.util.List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	// Delete single Product
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	// Get single Product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}
	
}
