package com.test.selenium;

import org.openqa.selenium.WebDriver;

public class RunEnvironment {
	private static WebDriver driver;
	
	public static void setWebDriver(WebDriver _driver){
		driver = _driver;
	}
	
	public static WebDriver getWebDriver(){
		return driver;
	}
}
