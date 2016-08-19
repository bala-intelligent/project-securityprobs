package com.niit.foodcart.controller;

	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;

	@Controller
	public class HomeController {
		
	@RequestMapping("/")
	public String home()
	{
		return "foodproducts";
	}

	@RequestMapping(value="/about")
	public String getabout()
	{
		return "about";
	}
	@RequestMapping(value="/beverages")
	public String getbeverages()
	{
		return "beverages";
	}
	@RequestMapping(value="/snacks")
	public String getsnacks()
	{
		return "snacks";
	}
	@RequestMapping(value="/vegetarian")
	public String getvegetarian()
	{
		return "vegetarian";
	}
	@RequestMapping(value="/nonvegetarian")
	public String getnonvegetarian()
	{
		return "nonvegetarian";
	}
	@RequestMapping(value="/home")
	public String getpage()
	{
		return "foodproducts";
	}
	@RequestMapping(value="/multipleUpload")
	public String retupload()
	{
		return "multipleUpload";
	}
	@RequestMapping(value="/foodproducts")
	public String welcome()
	{
		return "foodproducts";
	}
	@RequestMapping(value="welcome1")
	public String tamil()
	{
		return "index";
	}
	}
	



