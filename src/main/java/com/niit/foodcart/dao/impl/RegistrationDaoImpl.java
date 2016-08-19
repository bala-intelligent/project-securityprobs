package com.niit.foodcart.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.foodcart.model.Registration;
import com.niit.foodcart.model.Role;
@Repository
@Transactional
public class RegistrationDaoImpl implements RegistrationDao{
@Autowired SessionFactory sf;

@Override
public void saveOrUpdate(Registration registration) {
	// TODO Auto-generated method stub
	registration.setEnabled(true);
	Role r=new Role();
	r.setRegistration(registration);
	r.setRole("ROLE_USER");
	sf.getCurrentSession().saveOrUpdate(registration);
	sf.getCurrentSession().saveOrUpdate(r);
}
	

}
