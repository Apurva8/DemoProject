from selenium import webdriver
import time
import unittest
from loguru import logger

class LoginTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        logger.debug("setting up HRM login test case")
        cls.driver = webdriver.Chrome(executable_path='chromedriver')
        cls.driver.maximize_window()
        cls.driver.implicitly_wait(10)

    def test_hrm_validCredential(self):
        self.driver.get('https://opensource-demo.orangehrmlive.com/')
        self.driver.find_element_by_id("txtUsername").send_keys("Admin")
        self.driver.find_element_by_id("txtPassword").send_keys("admin123")
        self.driver.find_element_by_id("btnLogin").click()
        self.driver.find_element_by_id("welcome").click()
        self.driver.find_element_by_link_text("Logout").click()
        time.sleep(10)

    @classmethod
    def tearDownClass(cls):
        cls.driver.close()
        cls.driver.quit()
        logger.debug("Test Completed")


if __name__ == '__main__':
    unittest.main()
