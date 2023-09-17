package productcrudapp1.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp1.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create product or add product or save product
	@Transactional
	public void createProduct(Product product){
		System.out.println("product Added....");
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//get all products
	public List<Product> getProducts(){
		System.out.println("retriving all the Product....");
		List<Product> products= this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	
	//delete single product
	@Transactional
	public void deleteProduct(int pid){
		System.out.println("product deleted succefully");
		Product p=this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get single product
	public Product getproduct(int pid){
	return	this.hibernateTemplate.get(Product.class, pid );
	}
  
}
