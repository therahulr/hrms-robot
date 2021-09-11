from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait

from test_data.scrape_data.locators import *
from test_data.scrape_data.read_config import EnvData


class SeleniumDriver(EnvData):

    def __init__(self):
        super().__init__()
        self.env_data = self.get_env_data()
        self.wait_time = 10
        self.app_url = self.env_data['url']
        self.username = self.env_data['username']
        self.password = self.env_data['password']

        """ Drivers"""
        options = Options()
        options.add_argument('--headless')
        self.driver = webdriver.Chrome()
        self.wait = WebDriverWait(self.driver, timeout=self.wait_time)

    def setup(self):
        print("Web driver initiated!...\nNavigating to the application url... {}".format(self.app_url))
        self.driver.get(url=self.app_url)
        self.driver.maximize_window()
        print("Navigated successfully!")

    def teardown(self):
        self.driver.close()
        self.driver.quit()
        print("\nClosing the web driver...")

    def login_into_hrms(self):
        print(">Login into the application")
        self.wait.until(EC.presence_of_element_located((By.XPATH, username_field))).send_keys(self.username)
        self.wait.until(EC.presence_of_element_located((By.XPATH, password_field))).send_keys(self.password)
        self.wait.until(EC.presence_of_element_located((By.XPATH, signin_btn))).click()
        self.wait.until(EC.presence_of_element_located((By.XPATH, homepage_logo)))
        print("Login successful...")

    def navigate_to_employee_list_page(self):
        print("Navigating to the Employee List Screen...")
        self.wait.until(EC.presence_of_element_located((By.XPATH, menu_icon))).click()
        self.wait.until(EC.presence_of_element_located((By.XPATH, employee_list_option))).click()
        page_header = self.wait.until(EC.presence_of_element_located((By.XPATH, employee_list_page_header)))
        if page_header:
            print("Navigated to Employee List Screen")
        else:
            print("Could not navigated to the Employee List screen...\nSomething went wrong...")