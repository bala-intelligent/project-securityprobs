package com.niit.foodcart.dao.impl;

import com.niit.foodcart.model.Login;

public interface LoginDao {

	boolean checkUser(Login login);
	void saveOrUpadate(Login login);

}
