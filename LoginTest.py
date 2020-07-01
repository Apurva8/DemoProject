import unittest
import HtmlTestRunner
from selenium import webdriver
import time
import sys
#to get the POM LoginPage class accessed here since we are executing it on CMD prompt
sys.path.append("C:/Users/Narayana/PycharmProjects/SeleniumPython")
from LoginPage import LoginPage

class LoginTest(unittest.TestCase):
    baseURL="https://admin-demo.nopcommerce.com/"
    username="admin@yourstore.com"
    password="admin"
    driver=webdriver.Chrome(executable_path=r"C:\chromedriver.exe")

    @classmethod
    def setUpClass(cls):
        cls.driver.get(cls.baseURL)
        cls.driver.maximize_window()

    def test_login(self):
        lp=LoginPage(self.driver)
        lp.setUserName(self.username)
        lp.setPassword(self.password)
        lp.clickLogin()
        time.sleep(5)
        self.assertEqual("Your store. Login", self.driver.title, "webpage title is not matching")

    @classmethod
    def tearDownClass(cls):
        cls.driver.close()

if __name__=='__main__':
    unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output="..\\reports"))
