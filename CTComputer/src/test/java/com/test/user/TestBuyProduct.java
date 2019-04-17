package com.test.user;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.model.Order;
import com.test.selenium.RunEnvironment;
import com.test.selenium.SeleniumCommon;
import com.test.selenium.SeleniumManager;
import com.test.util.DateFormat;
import com.test.util.StringUtil;

public class TestBuyProduct {
	private WebDriver driver = null;
	private Order order = new Order();
	@Before
    public void startBrowser() {
        SeleniumCommon.startBrowser(driver);
        driver = RunEnvironment.getWebDriver();
    }
	
	public Order initOrder(){
		Order order = new Order();
		order.setRequireDate(DateFormat.stringToDate("20/04/2019"));
		order.setNumberPhone("123456789");
		order.setAddress("HCM");
		order.setDescription("Nguyen Trung Chi mua hàng");
		return order;
	}
	
	@Test
	public void buyProductSuccess(){
		order = initOrder();
		assertEquals(true, register(order));
	}
	
	public boolean register(Order order){
		try {
			
			//Login
			WebElement menuLogin = driver.findElement(By.xpath("//*[@id='topMenu']/li[7]/a/span"));
    		menuLogin.click();
    		
    		WebElement elementId = driver.findElement(By.id("id"));
    		elementId.sendKeys("trungchi");
    		
    		WebElement elementPassword = driver.findElement(By.id("password"));
    		elementPassword.sendKeys("123456");
    		
    		WebElement btnLogin = driver.findElement(By.xpath("//*[@id='register']/div[4]/div/input"));
    		btnLogin.click();
			
    		//Click details
			WebElement product = driver.findElement(By.xpath("//*[@id='mainBody']/div/div/div[2]/ul[2]/li[1]/div/a"));
			product.click();
			
			//Click add card
			WebElement addCard = driver.findElement(By.xpath("//*[@id='mainBody']/div/div/div[2]/div/div[2]/div/div/a"));
			addCard.click();
			
			//Click mua hàng
			WebElement buy = driver.findElement(By.xpath("//*[@id='mainBody']/div/div/div[2]/form/div/a[3]"));
			buy.click();
			
			//Scroll down
			((JavascriptExecutor)driver).executeScript("scroll(0,150)");
			
			//Fill require date
			WebElement elementRequireDate = driver.findElement(By.id("requireDate"));
			elementRequireDate.sendKeys(StringUtil.checkNull(DateFormat.dateToString(order.getRequireDate())));
			elementRequireDate.sendKeys(Keys.ESCAPE);
			
			//Fill phone
			WebElement elementNumberPhone = driver.findElement(By.id("numberPhone"));
			elementNumberPhone.sendKeys(StringUtil.checkNull(order.getNumberPhone()));
			
			//Fill address
			WebElement elementAddress = driver.findElement(By.id("address"));
			elementAddress.sendKeys(StringUtil.checkNull(order.getAddress()));
			
			//Fill description
			WebElement elementDescription = driver.findElement(By.id("description"));
			elementDescription.sendKeys(StringUtil.checkNull(order.getDescription()));
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@After
    public void stopBrowser() {
//    	SeleniumManager.stopDriver();
    }
}
