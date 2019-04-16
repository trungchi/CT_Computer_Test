package com.test.user;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.model.Customer;
import com.other.HibernateUtil;

public class Login{
	SessionFactory sessionFactory;
	public boolean checkValidCustomer(String username, String password){
		Session session = null;
		try {
//			sessionFactory = HibernateUtil.getSessionFactory();
			Customer customer = new Customer();
			customer.setId(username);
			System.out.println(sessionFactory);
//			Session session = sessionFactory.getCurrentSession();
			session = HibernateUtil.getSessionFactory().openSession(); //getCurrentSession();
			Customer customerData = (Customer) session.get(Customer.class, username);
			if(customer.getId().equals(username))
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return false;
	}
	public static void main(String[] args) {
		Login login = new Login();
		login.checkValidCustomer("trungchi", "123456");
	}
}
