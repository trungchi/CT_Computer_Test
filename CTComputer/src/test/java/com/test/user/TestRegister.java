package com.test.user;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.model.Customer;
import com.test.selenium.RunEnvironment;
import com.test.selenium.SeleniumCommon;
import com.test.selenium.SeleniumManager;
import com.test.util.DateFormat;

public class TestRegister {
	private WebDriver driver = null;
	
	@Before
    public void startBrowser() {
        SeleniumCommon.startBrowser(driver);
        driver = RunEnvironment.getWebDriver();
    }
	
	@Test
    public void register() {
    	try {
    		Customer customer = new Customer();
    		customer.setFullName("Trung Chi");
    		assertEquals(true, register(customer));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
	
	public boolean register(Customer customer){
		try {
			WebElement registerMenu = driver.findElement(By.xpath("//*[@id='topMenu']/li[6]/a"));
			registerMenu.click();
			
			WebElement fullName = driver.findElement(By.id("fullName"));
			fullName.sendKeys(customer.getFullName());
			
			WebElement userName = driver.findElement(By.id("id"));
			userName.sendKeys(customer.getId());
			
			WebElement password = driver.findElement(By.id("password"));
			password.sendKeys(customer.getPassword());
			
			WebElement email = driver.findElement(By.id("email"));
			email.sendKeys(customer.getEmail());
			
			WebElement birthday = driver.findElement(By.id("birthday"));
			email.sendKeys(DateFormat.dateToString(customer.getBirthday()));
			
			WebElement numberPhone = driver.findElement(By.id("numberPhone"));
			numberPhone.sendKeys(customer.getNumberPhone());
			
			WebElement gender = driver.findElement(By.id("gender"));
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	@After
    public void stopBrowser() {
    	SeleniumManager.stopDriver();
    }
}
