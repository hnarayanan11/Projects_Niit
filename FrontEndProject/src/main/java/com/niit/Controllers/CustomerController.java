package com.niit.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
import com.niit.model.User;

@Controller
public class CustomerController {
	@Autowired
private CustomerDao customerDaoImpl;
	@RequestMapping(value="/all/registrationform")
	public ModelAndView getRegistrationForm(){
		return new ModelAndView("registrationForm","customer",new Customer());
	}
	@RequestMapping(value="/all/register")
	public String registerCustomer(@ModelAttribute(name="customer") Customer customer,Model model){
		if(!customerDaoImpl.isEmailUnique(customer.getUser().getEmail())){
			model.addAttribute("error","Email Id already Exists.. please enter different email address");
			return "registrationform";
		}
	   	customerDaoImpl.registerCustomer(customer);
	   	model.addAttribute("command", new User());
	   	return "login";
	}
	@RequestMapping("/all/login")
	public ModelAndView loginCustomer() {
		System.out.println("Customer Controller login");
		return new ModelAndView("login","command",new User());
	}
}
