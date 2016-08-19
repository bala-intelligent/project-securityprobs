package com.niit.foodcart.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.foodcart.dao.impl.LoginDao;
import com.niit.foodcart.model.Login;
@Service
@Transactional
public class LoginServiceImpl implements LoginService {
	@Autowired(required=true)
	private LoginDao ld;
	
	

	@Override
	public boolean checkUser(Login login) {
		boolean b=false;
		b=ld.checkUser(login);
		if(b==true){
			b=true;
		}
		return b;

	}
	@Override
	public void save(Login login)
	{
		ld.saveOrUpadate(login);
	}
}
