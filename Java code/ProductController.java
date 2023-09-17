package productcrudapp1.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp1.dao.ProductDao;
import productcrudapp1.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDao dao;

	@RequestMapping("/")
	public String home(Model m){
		
		List<Product> products= this.dao.getProducts();
		m.addAttribute("products",products);
		System.out.println("home is Running........");
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m){
		m.addAttribute("title","Add Product App");
		return "add_product_form";
	}

	@RequestMapping(value="/handel-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute ("product") Product product, HttpServletRequest request){
		
		this.dao.createProduct(product);
		System.out.println(product);
		
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath()+"/");
		return view;
	}
	
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId ,HttpServletRequest request){
		this.dao.deleteProduct(productId);
		RedirectView view= new RedirectView();
		view.setUrl(request.getContextPath()+"/");
		return view;
	}
	

	@RequestMapping("/update/{productId}")
	public String updateProduct(@PathVariable("productId") int pid, Model m){
		
		Product product= this.dao.getproduct(pid);
		m.addAttribute("product",product);
		return "update_form";
	}
}

