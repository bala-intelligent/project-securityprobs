package com.niit.foodcart.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.foodcart.model.Foodproducts;
import com.niit.foodcart.service.impl.FoodproductsService;

@Controller
public class FoodproductsController {
	@Autowired
	 private FoodproductsService foodproductsService;
		
		
		
		@RequestMapping("/frontcrud")
		public String setupForm(Map<String, Object>map){
			Foodproducts foodproducts = new Foodproducts();
			map.put("foodproducts", foodproducts);
			map.put("foodproductsList", foodproductsService.getAllFoodproducts());
			return "frontcrud";
		}
		@RequestMapping(value={"viewall.do","edit/viewall.do"},method =RequestMethod.POST)
		public String doActions(@ModelAttribute Foodproducts foodproducts,BindingResult result,@RequestParam String action,Map<String, Object>map){
			Foodproducts foodproductsdelivery = new Foodproducts();
			switch(action.toLowerCase()){
			case "add":
				foodproductsService.add(foodproducts);
				foodproductsdelivery=foodproducts; 
				break;
			case "edit":
				foodproductsService.edit(foodproducts);
				foodproductsdelivery=foodproducts;
				break;
			case "delete":
				foodproductsService.delete(foodproducts.getProductId());
				foodproductsdelivery=new Foodproducts();
				break;
			case "search":	
			Foodproducts searchedFoodproducts=	foodproductsService.getFoodproducts(foodproducts.getProductId());
				foodproductsdelivery=searchedFoodproducts!=null ? searchedFoodproducts:new Foodproducts();
				break;
				}
			map.put("foodproducts", foodproductsdelivery);
			map.put("foodproductsList", foodproductsService.getAllFoodproducts());
			return "viewall";
			
			
}
}
