package com.niit.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value= {"/","/homePage"})
	public String homePage(){
		System.out.println("Home Controller: Home Page");
		return "homePage";
	}
	
	@RequestMapping("/aboutUs")
	public String aboutUs(){
		System.out.println("Home Controller: aboutUs Page");
		return "aboutUs";
	}
	
	@RequestMapping("/contactUs")
	public String contactUs(){
		System.out.println("Home Controller: contactUs Page");
		return "contactUs";
	}
	
}
