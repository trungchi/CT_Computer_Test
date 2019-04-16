package com.test.user;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
//@Transactional
//@RequestMapping(value = "test")
public class TestLogin {
	@Autowired
	SessionFactory sessionFactory;
	
	@RequestMapping(value = "home")
	@Test
	public void test() {
		Login login = new Login(sessionFactory);
//		assertEquals(false, login.checkValidCustomer("chi", "123456"));
		assertEquals(false, true);
	}
}
