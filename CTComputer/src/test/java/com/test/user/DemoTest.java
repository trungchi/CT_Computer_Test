package com.test.user;

import static org.junit.Assert.*;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.test.selenium.RunEnvironment;
import com.test.selenium.SeleniumManager;

public class DemoTest {
	private WebDriver driver = null;
	@Before
    public void startBrowser() {
        SeleniumManager.initWebDriver();
        driver = RunEnvironment.getWebDriver();
        driver.manage().timeouts().pageLoadTimeout(100, TimeUnit.SECONDS);
		driver.get("http://localhost:8080/CTComputer/");
    }

    @Test
    public void demo() {
    	try {
    		WebDriver driver = RunEnvironment.getWebDriver();
    		driver.manage().timeouts().pageLoadTimeout(100, TimeUnit.SECONDS);
    		driver.get("https://www.blazemeter.com/selenium");
    		String homeUrl = driver.findElement(By.cssSelector("div#logo> a#logo_image ")).getAttribute("href");
    		assertEquals(homeUrl, "https://www.blazemeter.com/");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    @Test
    public void testComputer() {
    	try {
    		WebElement menuLogin = driver.findElement(By.xpath("//*[@id='topMenu']/li[7]/a/span"));
    		menuLogin.click();
    		
    		WebElement elementId = driver.findElement(By.id("id"));
    		elementId.sendKeys("trungchi");
    		
    		WebElement elementPassword = driver.findElement(By.id("password"));
    		elementPassword.sendKeys("123456");
    		
    		WebElement btnLogin = driver.findElement(By.xpath("//*[@id='register']/div[4]/div/input"));
    		btnLogin.click();
    		
    		assertEquals("", "https://www.blazemeter.com/");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }

    @After
    public void tearDown() {
    	//SeleniumManager.shutDownDriver();
    }
}
