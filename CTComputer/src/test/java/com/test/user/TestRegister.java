package com.test.user;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import com.model.Customer;
import com.test.selenium.RunEnvironment;
import com.test.selenium.SeleniumCommon;
import com.test.util.DateFormat;
import com.test.util.StringUtil;

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
    		customer.setBirthday(DateFormat.stringToDate("22/11/2011"));
    		customer.setNumberPhone("1234567890");
    		customer.setAddress("TP. HCM");
    		customer.setGender(2);
    		customer.setPhoto("C:/photo/img.jpg");
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
			fullName.sendKeys(StringUtil.checkNull(customer.getFullName()));
			
			WebElement userName = driver.findElement(By.id("id"));
			userName.sendKeys(StringUtil.checkNull(customer.getId()));
			
			WebElement password = driver.findElement(By.id("password"));
			password.sendKeys(StringUtil.checkNull(customer.getPassword()));
			
			WebElement email = driver.findElement(By.id("email"));
			email.sendKeys(StringUtil.checkNull(customer.getEmail()));
			
			WebElement birthday = driver.findElement(By.id("birthday"));
			birthday.sendKeys(DateFormat.dateToString(customer.getBirthday()));
			birthday.sendKeys(Keys.ESCAPE);
			
			WebElement numberPhone = driver.findElement(By.id("numberPhone"));
			numberPhone.sendKeys(StringUtil.checkNull(customer.getNumberPhone()));
			
			String genderValue = "";
			if(customer.getGender() == 1){
				genderValue = "Nam";
			}else if(customer.getGender() == 2){
				genderValue = "Nữ";
			}
			WebElement gender = driver.findElement(By.id("gender"));
			Select selectGender = new Select(gender);
			selectGender.selectByVisibleText(genderValue);
			
			WebElement address = driver.findElement(By.id("address"));
			Select selectAddress = new Select(address);
			selectAddress.selectByVisibleText(StringUtil.checkNull(customer.getAddress()));
			
			WebElement photo = driver.findElement(By.id("photo"));
			photo.sendKeys(StringUtil.checkNull(customer.getPhoto()));
			
			//Click Register
			WebElement btnRegister = driver.findElement(By.xpath("//*[@id='register']/div[10]/div/input"));
			birthday.sendKeys(DateFormat.dateToString(customer.getBirthday()));
			birthday.sendKeys(Keys.ESCAPE);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	@After
    public void stopBrowser() {
//    	SeleniumManager.stopDriver();
    }
}
