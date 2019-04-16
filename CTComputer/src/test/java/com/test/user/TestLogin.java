package com.test.user;

import static org.junit.Assert.*;

import org.junit.Test;

import com.admin.dao.AccountDAO;
import com.model.Admin;
public class TestLogin {
	Login login = new Login();
	@Test
	public void test() {
		assertEquals(false, login.checkValidCustomer("chi", "123456"));
	}
}
