package com.niit.foodcart.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.foodcart.model.Foodproducts;
import com.niit.foodcart.service.impl.FoodproductsService;

@Controller
public class DropdownController {

	@Autowired
	private FoodproductsService foodproductsservice;
	
	@RequestMapping(value="/veg")
	public String getCategory(Map<String, Object>map)
	{
		Foodproducts foodproducts = new Foodproducts();
		String category="vegetarian";
		map.put("foodproducts", foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllvegetarianproducts(category));
		return "category";
	}
	
	@RequestMapping(value="/nonveg")
	public String getCategory1(Map<String, Object>map)
	{
		Foodproducts foodproducts = new Foodproducts();
		String category="nonvegetarian";
		map.put("foodproducts", foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllvegetarianproducts(category));
		return "category";
	}
	@RequestMapping(value="/snack")
	public String getCategory2(Map<String, Object>map)
	{
		Foodproducts foodproducts = new Foodproducts();
		String category="snacks";
		map.put("foodproducts", foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllvegetarianproducts(category));
		return "category";
	}
	@RequestMapping(value="/bev")
	public String getCategory3(Map<String, Object>map)
	{
		Foodproducts foodproducts = new Foodproducts();
		String category="beverages";
		map.put("foodproducts", foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllvegetarianproducts(category));
		return "category";
	}
	
	@RequestMapping(value="edit/{productId}")
	public String edit(@PathVariable("productId")int productId,@ModelAttribute Foodproducts foodproducts,BindingResult result,Map<String, Object>map)
	{
		foodproducts=foodproductsservice.getFoodproducts(productId);
		map.put("foodproducts",foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllFoodproducts());
		//System.out.println(foodproductsservice.getAllFoodproducts());
		return "frontcrud";
	}
	
	@RequestMapping(value="delete/{productId}")
	public String delete(@PathVariable("productId")int productId,@ModelAttribute Foodproducts foodproducts,BindingResult result,Map<String, Object>map)
	{
		foodproductsservice.delete(foodproducts.getProductId());
		return "viewall";
	}
	@RequestMapping(value="/category")
	public String types()
	{
		return null;
	}
}

