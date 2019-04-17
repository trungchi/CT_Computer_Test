package com.test.selenium;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;

public class SeleniumCommon {
	public static void startBrowser(WebDriver driver) {
        SeleniumManager.initWebDriver();
        driver = RunEnvironment.getWebDriver();
        driver.manage().timeouts().pageLoadTimeout(100, TimeUnit.SECONDS);
		driver.get("http://localhost:8080/CTComputer/");
    }
}
