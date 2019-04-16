package com.test.user;

import java.util.List;

import javax.servlet.http.Cookie;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Customer;
import com.model.Product;

public class Login {
	SessionFactory sessionFactory;
	public Login(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	public boolean checkValidCustomer(String username, String password){
		Customer customer = new Customer();
		customer.setId(username);
		System.out.println(sessionFactory);
		Session session = sessionFactory.getCurrentSession();
		try {
			String hql = "FROM Customer c WHERE c.id = '"+username+"' AND c.password = '"+password+"' AND c.activated = true";
			Query query = session.createQuery(hql);
			List<Customer> list = query.list();
			System.out.println(list.size());
			if(list.size() == 1){
				return true;
			}else{
				return false;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}
	public static void main(String[] args) {
		Login login = new Login(null);
		login.checkValidCustomer("trungchi", "123456");
	}
}
