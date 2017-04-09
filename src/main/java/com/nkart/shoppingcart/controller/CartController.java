package com.nkart.shoppingcart.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nkart.shoppingcart.dao.CartDAO;
import com.nkart.shoppingcart.dao.CategoryDAO;
import com.nkart.shoppingcart.dao.ProductDAO;
import com.nkart.shoppingcart.dao.impl.CartDAOImpl;
import com.nkart.shoppingcart.domain.Cart;
import com.nkart.shoppingcart.domain.Product;

@Controller
public class CartController {


	@Autowired
	 private CartDAO cartDAO;
	@Autowired
	 private CategoryDAO categoryDAO;
	 @Autowired
	 private ProductDAO productDAO;
	 
	 public static final Logger log=LoggerFactory.getLogger(CartController.class);

	 int q;
	 
	 @RequestMapping(value={"addtoCart/{userid}/{id}"})
	 public String addTOCart(@ModelAttribute("cart")Cart cart,BindingResult result,@PathVariable("userid") int userid,@PathVariable("id") int productid,HttpSession session)throws Exception{
	 System.err.println("userid==========="+userid);
	  log.info("Starting of the method addToCart");
	  long p;
	  if(cartDAO.getproduct(productid,userid)==null){
	   Cart cart2= new Cart(); 
	   Product product = productDAO.getProductById(productid);
	   cart2.setProductid(product.getId());
	   cart2.setProductname(product.getName());
	   cart2.setPrice(product.getPrice());
	   cart2.setQuantity(1);
	   q=cart2.getQuantity();
	   cart2.setStatus("C");
	   cart2.setUserid(userid);
	// cart2.setUserid(((int) session.getAttribute("userid"));
	   	   cartDAO.saveorupdate(cart2);
	   	session.setAttribute("cartsize", cartDAO.cartsize( (Integer) session.getAttribute("userid")));
	  System.out.println("save sucessfully..............................!");
	            return "redirect:/Cart";
	  }else{
	   Cart cart1 = cartDAO.getproduct(productid,userid);
	   Product product1 = productDAO.getProductById(productid);
	   q=cart1.getQuantity();
	   cart1.setStatus("C");
	   /*cart1.setUserid((int) session.getAttribute("userid"));*/
	   p=product1.getPrice();
	   q+=1;
	   p=q*p;
	 cart1.setQuantity(q);
	 cart1.setPrice(p);
	// cart1.setUserid(userid);
	cartDAO.saveorupdate(cart1);
	session.setAttribute("cartsize", cartDAO.cartsize( (Integer) session.getAttribute("userid")));
	System.out.println("opeartion over");

	 log.info("Ending of the method addToCart");
	return "redirect:/Cart";
	  } 
	  
	 }
	 
	 
	 @RequestMapping(value="update/{id}")
		public String update(@ModelAttribute("cart") Cart cart)
	 {
		 log.info("Starting of the method updatecart");
			cartDAO.update(cart);
			 log.info("Ending of the method updateCart");
			return "redirect:/Cart";
			
		}
	 @RequestMapping(value="delete/{id}")
	 public String delete(@ModelAttribute("cart") Cart cart,HttpSession session)
	 {
		 log.info("Starting of the method deletecart");
	  cartDAO.delete(cart);
	  session.setAttribute("cartsize", cartDAO.cartsize( (Integer) session.getAttribute("userid")));
	  log.info("Ending of the method deletecart");
	  return "redirect:/Cart";
	 }
	 
	 @RequestMapping("editorder/{id}")
		public String editorder(@PathVariable("id") int id, @RequestParam("quantity") int q, HttpSession session) {
		 log.info("Starting of the method editordercart");
			Cart cart = cartDAO.getitem(id);
			Product product = productDAO.getProductById(cart.getProductid());
			System.out.println("cartlist==="+cart.getProductid());
			System.out.println("productlist="+product);
			cart.setQuantity(q);
			cart.setPrice(q * product.getPrice());
			cartDAO.saveorupdate(cart);
			session.setAttribute("cartsize", cartDAO.cartsize((Integer) session.getAttribute("userid")));
			log.info("Ending of the method editordercart");
			return "redirect:/Cart";
		}

	 @RequestMapping(value="/Cart")
	 public ModelAndView cartpage(@ModelAttribute("cart") Cart cart,HttpSession session){
		 log.info("Starting of the method cartPage");
	  ModelAndView mv= new ModelAndView("Home");
	  int userid = (Integer) session.getAttribute("userid");
	  mv.addObject("CartList", cartDAO.get(userid));
	  if(cartDAO.cartsize((Integer) session.getAttribute("userid"))!=0){
		   mv.addObject("cartprice", cartDAO.CartPrice((Integer) session.getAttribute("userid")));
	  }else{
	 
	  mv.addObject("emptycart","Sorry your shopping cart is empty");
	  }
	  mv.addObject("isUserClickedCart","true");
	  log.info("Ending of the method cartPage");
	  return mv;
	 }
	 
	 @RequestMapping("placeorder")
	 public String placeorder(Model model,@ModelAttribute("cart")Cart cart,BindingResult result,@PathVariable("userid") int userid)
	 {
		 log.info("Starting of the method placeOrder");
	  model.addAttribute("IfPaymentClicked", "true");
	  model.addAttribute("HideOthers","true");
	  
	  log.info("Ending of the method placeOrder");
	  return "Payment";
	 }

	 @RequestMapping("pay")
	 public String payment(HttpSession session,@ModelAttribute("cart")Cart cart,BindingResult result,@PathVariable("userid") int userid) {
		 log.info("Starting of the method payment");
		 cartDAO.pay((Integer) session.getAttribute("userid"));
		 cartDAO.pay(userid);
		 log.info("Ending of the method payment");
	  return "Home";
	 }
	 @RequestMapping("tqpage")
	 public String tqpage(HttpSession session,@ModelAttribute("cart")Cart cart,BindingResult result,@PathVariable("userid") int userid) {
		 log.info("Starting of the tqpage");
	cartDAO.pay(userid);
		 log.info("Ending of the tqpage");
	  return "tqpage";
	 }
	
	}
