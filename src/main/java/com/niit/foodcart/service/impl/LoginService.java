package com.niit.foodcart.service.impl;

import com.niit.foodcart.model.Login;

public interface LoginService {

	boolean checkUser(Login login);

	void save(Login login);

}
