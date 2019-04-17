package com.test.user;

import static org.junit.Assert.assertEquals;

import java.util.List;

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
	private Customer customer = new Customer();
	@Before
    public void startBrowser() {
        SeleniumCommon.startBrowser(driver);
        driver = RunEnvironment.getWebDriver();
		customer.setFullName("Trung Chi");
		customer.setId("nguyentrungchi");
		customer.setPassword("123456");
		customer.setEmail("trungchi92@gmail.com");
		customer.setBirthday(DateFormat.stringToDate("22/11/2011"));
		customer.setNumberPhone("1234567890");
		customer.setGender(2);
		customer.setAddress("TP. HCM");
		customer.setPhoto("C:/photo/img.jpg");
    }
	
	@Test
    public void register() {
    	try {
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
			btnRegister.click();
			
			//GET RESULT
			List<WebElement> listInfo = driver.findElements(By.xpath("/html/body/div[2]/div/div/div[2]/div/form/h4"));
			for(WebElement e : listInfo){
				String value = e.getText();
				if(value.contains("Đăng ký thành công"))
					return true;
				else if(value.contains("Đăng ký lỗi") || value.contains("Lỗi gửi mail") || value.contains("Tên đăng nhập đã tồn tại"))
					return false;
			}
			
			WebElement form = driver.findElement(By.id("register"));
			List<WebElement> listError = form.findElements(By.cssSelector(".controls > label"));
			if(listError.size() > 0)
				return false;
			else
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
