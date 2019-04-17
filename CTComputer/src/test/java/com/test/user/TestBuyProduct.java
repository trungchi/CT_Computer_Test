package com.test.user;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.WebDriver;

import com.test.selenium.RunEnvironment;
import com.test.selenium.SeleniumCommon;
import com.test.selenium.SeleniumManager;

public class TestBuyProduct {
	private WebDriver driver = null;
	@Before
    public void startBrowser() {
        SeleniumCommon.startBrowser(driver);
        driver = RunEnvironment.getWebDriver();
    }
	
	@After
    public void stopBrowser() {
    	SeleniumManager.stopDriver();
    }
}
