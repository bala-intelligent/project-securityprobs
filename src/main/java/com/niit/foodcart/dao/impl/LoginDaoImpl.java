package com.niit.foodcart.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.foodcart.model.Login;

@Repository("LoginDao")

@Transactional

public class LoginDaoImpl implements LoginDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
@Override
	public boolean checkUser(Login login) {
		boolean isvaliduser=false;
		
		Query q=sessionFactory.openSession().createQuery("from login where name= '"+login.getUsername()+"' and password='"+login.getPassword()+"'");
		List<Login> ul= q.list();
		int s=ul.size();
		if(s==1)
		{
			isvaliduser=true;
		}
		
		return isvaliduser;
	}
	
	
	@Override
	public void saveOrUpadate(Login login) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(login);
	}
}
