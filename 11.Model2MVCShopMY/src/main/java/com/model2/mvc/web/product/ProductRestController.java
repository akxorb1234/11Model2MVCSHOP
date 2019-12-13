package com.model2.mvc.web.product;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.product.ProductService;

@RestController
@RequestMapping("/product/*")
public class ProductRestController {

	
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	public ProductRestController() {
		
		System.out.println("프로덕트 레스트컨트롤러 디폴트생성자");
	}
	
	@RequestMapping(value = "json/getProduct/{prodNo}" , method = RequestMethod.GET)
	public Product getProduct(@PathVariable int prodNo) throws Exception{
		
		System.out.println("겟프로덕트 겟?");
		return productService.getProduct(prodNo);
		
	}
	@RequestMapping(value = "json/addProduct" , method = RequestMethod.POST)
	public void addProduct(@RequestBody Product product) throws Exception{
		
		
		System.out.println(" 에드프로덕트 포스트방식");
		productService.addProduct(product);
		
	}
	@RequestMapping(value = "json/updateProduct" , method = RequestMethod.POST)
	public void updateProduct (@RequestBody Product product) throws Exception{
		
		System.out.println("업데이트 프로덕트 :: 포스트방식");
		productService.updateProduct(product);
		
	}
	@RequestMapping(value = "json/updateProduct/{prodNo}" , method= RequestMethod.GET)
	public Product updateProduct(@PathVariable int prodNo) throws Exception{
		
		System.out.println("user / 업데이트유저 : 겟방식");
		Product product = productService.getProduct(prodNo);
		return product;
		
	}
	
	@RequestMapping(value = "json/listProduct", method = RequestMethod.GET)
	public Map listProduct() throws Exception{
		Search search = new Search();
		
		System.out.println("리스트 프로덕트 겟방식 ");
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		Map<String , Object> map=productService.getProductList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		map.put("search", search);
		map.put("resultPage", resultPage);
		return map;
	}
	
	@RequestMapping(value = "json/listProduct", method = RequestMethod.POST)
	public Map listProduct(@RequestBody Search search) throws Exception{
		
		System.out.println("프로덕트 리스트 포스트방식 ");
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		Map<String , Object> map=productService.getProductList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		map.put("search", search);
		map.put("resultPage", resultPage);
		return map;
	}
	
			
	
	
}

