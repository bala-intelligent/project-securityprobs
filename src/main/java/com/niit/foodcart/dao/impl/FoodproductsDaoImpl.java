package com.niit.foodcart.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.foodcart.model.Foodproducts;

@Repository
public class FoodproductsDaoImpl implements FoodproductsDao {
	@Autowired
	private SessionFactory session;
	@Override
	
	public void add(Foodproducts foodproducts) {
		session.getCurrentSession().save(foodproducts);
	}

	@Override
	public void edit(Foodproducts foodproducts) {
		session.getCurrentSession().update(foodproducts);
	}

@Override
	public void delete(int productId) {
		session.getCurrentSession().delete(getFoodproducts(productId));

	}

	@Override
	public Foodproducts getFoodproducts(int productId) {
		return (Foodproducts)session.getCurrentSession().get(Foodproducts.class,productId);
	}

	@Override
	public List getAllFoodproducts() {
		return session.getCurrentSession().createQuery(" from Foodproducts").list();
	}
	
	@Override
	public List getAllvegetarianproducts(String category)
	{
		return session.getCurrentSession().createQuery("from Foodproducts where category='"+category+"'").list();
	}

	@Override
	public List getAllcategory() {
		
		return session.getCurrentSession().createQuery("SELECT category from Foodproducts").list();
	}

//	@Override
//	public List getAllnonvegetarianproducts()
//	{
//		return session.getCurrentSession().createQuery("from Foodproducts where category='non-vegetarian'").list();
//	}
//
//	@Override
//	public List getAllsnacksproducts()
//	{
//		return session.getCurrentSession().createQuery("from Foodproducts where category='snacks'").list();
//	}
//	@Override
//	public List getAllbeveragesproducts()
//	{
//		return session.getCurrentSession().createQuery("from Foodproducts where category='beverages'").list();
//	}

}
