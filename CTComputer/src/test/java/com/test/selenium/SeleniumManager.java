package com.test.selenium;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumManager {
	public static void initWebDriver() {
	    System.setProperty("webdriver.chrome.driver", "C:/ChromeDriver/chromedriver.exe");
	    WebDriver driver = new ChromeDriver();
	    RunEnvironment.setWebDriver(driver);
	}
	
	public static void stopDriver() {
	    RunEnvironment.getWebDriver().quit();
	}
}
