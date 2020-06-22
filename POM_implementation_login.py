from selenium import webdriver
import time
import unittest
import logging
import HtmlTestRunner
from loginPage import LoginPage
from HomePage import HomePage

class LoginTest(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        logging.warning("setting up HRM login test case")
        cls.driver = webdriver.Chrome(executable_path="C:\chromedriver_win32\chromedriver")
         cls.driver.get_screenshot_as_file("C:\chromedriver_win32\screen.png")
        cls.driver.implicitly_wait(10)
        cls.driver.maximize_window()

    def test_login_valid(self):
        driver=self.driver
        driver.get('https://opensource-demo.orangehrmlive.com/')
         cls.driver.get_screenshot_as_file("C:\chromedriver_win32\screen1.png")
        login=LoginPage(driver)
        login.enter_username("Admin")
        login.enter_password("admin123")
        login.click_login()

        homepage=HomePage(driver)
        homepage.click_welcome()
        homepage.click_logout()


        time.sleep(10)

    @classmethod
    def tearDownClass(cls):
        cls.driver.close()
        cls.driver.quit()
        logging.warning("Test Completed")


if __name__ == '__main__':
    unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output="C:/Users/Adarsh/.PyCharmCE2018.3/config/scratches/reports"))
