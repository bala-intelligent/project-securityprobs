package com.niit.foodcart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.foodcart.dao.impl.FoodproductsDao;
import com.niit.foodcart.model.Foodproducts;
@Service

public class FoodproductsServiceImpl implements FoodproductsService {
	@Autowired
	    private FoodproductsDao foodproductsDao;
		@Transactional
		public void add(Foodproducts foodproducts) {
			foodproductsDao.add(foodproducts);
		}

		@Transactional
		public void edit(Foodproducts foodproducts) {
			foodproductsDao.edit(foodproducts);
		}

		@Transactional
		public void delete(int productId) {

	foodproductsDao.delete(productId);

		}

		@Transactional
		public Foodproducts getFoodproducts(int productId) {
			return foodproductsDao.getFoodproducts(productId);
		}

		@Transactional
		public List getAllFoodproducts() {
			return foodproductsDao.getAllFoodproducts();
		}
		@Transactional
		public List getAllvegetarianproducts(String category)
		{
			return foodproductsDao.getAllvegetarianproducts(category);
		}
//		@Transactional
//		public List getAllnonvegetarianproducts()
//		{
//			return foodproductsDao.getAllnonvegetarianproducts();
//		}
//		@Transactional
//		public List getAllsnacksproducts()
//		{
//			return foodproductsDao.getAllsnacksproducts();
//		}
//		@Transactional
//		public List getAllbeveragesproducts()
//		{
//			return foodproductsDao.getAllbeveragesproducts();
//		}

		

		
}
