package com.niit.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/login")
	public String login(@RequestParam(required=false)String error,Model model){		
		System.out.println("inside the login");
		return "login";		
	}
	
	@RequestMapping("/contactUs")
	public String contactUs(){
		System.out.println("Home Controller: contactUs Page");
		return "contactUs";
	}
	
	@RequestMapping("/loginerror")
	public String loginError() {
		System.out.println("Login error");
		return "loginError";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		System.out.println("Logout successfully");
		return "homePage";
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		System.out.println("login success");
		return "homePage";
	}
	
}
