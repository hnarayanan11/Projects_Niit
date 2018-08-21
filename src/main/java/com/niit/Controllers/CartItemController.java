package com.niit.Controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartItemDao;
import com.niit.dao.ProductDao;
import com.niit.model.CartItem;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class CartItemController {
	@Autowired
	private ProductDao productDaoImpl;
	@Autowired
	private CartItemDao cartItemDaoImpl;
	@RequestMapping(value="/cart/addtocart/{productId}")
	public String addToCart(@PathVariable int productId,@RequestParam int requestedQuantity,@AuthenticationPrincipal  Principal principal ){
		String email=principal.getName();//Email id of the logged in user
		List<CartItem> cartItems=cartItemDaoImpl.getCartItem(email);
		Product product=productDaoImpl.getId(productId);
		for(CartItem cartItem:cartItems){
			if(cartItem.getProduct().getId()==productId){
				cartItem.setQuantity(requestedQuantity);
				cartItem.setTotalPrice(requestedQuantity * product.getPrice() );
				cartItemDaoImpl.saveOrUpdateCartItem(cartItem);//update
				return "redirect:/cart/purchasedetails";
			}
		}
		
		
		CartItem cartItem=new CartItem();
		
		User user=cartItemDaoImpl.getUser(email);
		cartItem.setProduct(product);
		cartItem.setQuantity(requestedQuantity);
		cartItem.setUser(user);
		cartItem.setTotalPrice(requestedQuantity * product.getPrice());
		cartItemDaoImpl.saveOrUpdateCartItem(cartItem);//insert
		return "redirect:/cart/purchasedetails";
	}
	@RequestMapping(value="/cart/purchasedetails")
	public String getPurchaseDetails(@AuthenticationPrincipal Principal principal,Model model,HttpSession session){
		String email=principal.getName();
		List<CartItem> cartItems=cartItemDaoImpl.getCartItem(email);
		model.addAttribute("cartItems",cartItems);
		session.setAttribute("cartSize",cartItems.size() );
		return "cart";
	}
	@RequestMapping(value="/cart/deletecartitem/{itemId}")// cart/**  ROLE_USER
	public String removeCartItem(@PathVariable int itemId){
		cartItemDaoImpl.removeCartItem(itemId);
		return "redirect:/cart/purchasedetails";
	}
	@RequestMapping(value="/cart/clearcart")
	public String clearCart(@AuthenticationPrincipal Principal principal){
		String email=principal.getName();
		List<CartItem> cartItems=cartItemDaoImpl.getCartItem(email);
		for(CartItem cartItem:cartItems){
			cartItemDaoImpl.removeCartItem(cartItem.getItemId());
		}
		return "redirect:/cart/purchasedetails";
	}
}
