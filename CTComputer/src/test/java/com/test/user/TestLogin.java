package com.test.user;

import static org.junit.Assert.*;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.test.selenium.RunEnvironment;
import com.test.selenium.SeleniumCommon;
import com.test.selenium.SeleniumManager;

public class TestLogin {
	private WebDriver driver = null;
	@Before
    public void startBrowser() {
        SeleniumCommon.startBrowser(driver);
    }
	
//    @Test
//    public void demo() {
//    	try {
//    		WebDriver driver = RunEnvironment.getWebDriver();
//    		driver.manage().timeouts().pageLoadTimeout(100, TimeUnit.SECONDS);
//    		driver.get("https://www.blazemeter.com/selenium");
//    		String homeUrl = driver.findElement(By.cssSelector("div#logo> a#logo_image ")).getAttribute("href");
//    		assertEquals(homeUrl, "https://www.blazemeter.com/");
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//    }
    
    @Test
    public void loginSuccess() {
    	try {
    		
    		assertEquals(true, login("trungchi", "123456"));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    @Test
    public void loginWrongPassword() {
    	try {
    		assertEquals(true, login("trungchi", "1234567"));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    @Test
    public void loginUserName() {
    	try {
    		assertEquals(true, login("trungchi123", "123456"));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    @Test
    public void loginPasswordLessThan6Characters() {
    	try {
    		assertEquals(true, login("trungchi123", "123456"));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    @Test
    public void loginEmptyValue() {
    	try {
    		assertEquals(true, login("", ""));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public boolean login(String userName, String password){
    	try {
    		if(userName.isEmpty() || password.isEmpty() || password.length() < 6){
    			return false;
    		}
    		WebElement menuLogin = driver.findElement(By.xpath("//*[@id='topMenu']/li[7]/a/span"));
    		menuLogin.click();
    		
    		WebElement elementId = driver.findElement(By.id("id"));
    		elementId.sendKeys(userName);
    		
    		WebElement elementPassword = driver.findElement(By.id("password"));
    		elementPassword.sendKeys(password);
    		
    		WebElement btnLogin = driver.findElement(By.xpath("//*[@id='register']/div[4]/div/input"));
    		btnLogin.click();
    		
  			List<WebElement> elementError = driver.findElements(By.xpath("//*[@id='register']/label"));
  			List<WebElement> elementErrorUser = driver.findElements(By.xpath("//*[@id='register']/div[1]/div/label"));
  			List<WebElement> elementErrorPass = driver.findElements(By.xpath("//*[@id='register']/div[2]/div/label"));
    		if(elementError.size() > 0 || elementErrorUser.size() > 0 || elementErrorPass.size() > 0){
   				return false;
    		}else{
    			return true;
    		}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
    }

    @After
    public void stopBrowser() {
    	SeleniumManager.stopDriver();
    }
}
