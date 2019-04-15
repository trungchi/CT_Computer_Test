package com.test.user;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.model.Customer;

public class Login {
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean checkValidCustomer(String username, String password){
		try {
			Customer customer = new Customer();
			customer.setId(username);
			Session session = sessionFactory.getCurrentSession();
			session.refresh(customer);
			if(customer.getId().equals(username))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) {
		Login login = new Login();
		login.checkValidCustomer("trungchi", "123456");
	}
}
