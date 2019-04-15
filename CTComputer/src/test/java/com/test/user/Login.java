package com.test.user;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import com.admin.controller.BasicController;
import com.admin.service.CustomerService;
import com.model.Customer;

public class Login extends BasicController {
	@Autowired
	CustomerService customerService;
	
	public boolean checkValidCustomer(String username, String password){
		Customer customer = new Customer();
		customer.setId(username);
		Session session = sessionFactory.getCurrentSession();
		session.refresh(customer);
		if(customer.getId().equals(username))
			return true;
		return false;
	}
}
