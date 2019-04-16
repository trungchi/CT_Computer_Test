package com.test.user;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.test.selenium.RunEnvironment;
import com.test.selenium.SeleniumManager;

public class DemoTest {
	@Before
    public void startBrowser() {
        SeleniumManager.initWebDriver();
    }

    @Test
    public void demo() {
        WebDriver driver = RunEnvironment.getWebDriver();
        driver.get("https://www.blazemeter.com/selenium");
        String homeUrl = driver.findElement(By.cssSelector("div#logo> a#logo_image ")).getAttribute("href");
        assertEquals(homeUrl, "https://www.blazemeter.com/");
    }

    @After
    public void tearDown() {
    	SeleniumManager.shutDownDriver();
    }
}
