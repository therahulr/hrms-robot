import shelve
import time

from bs4 import BeautifulSoup
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC

from test_data.scrape_data.locators import *
from test_data.scrape_data.selenium_work import SeleniumDriver


class EmployeeData(SeleniumDriver):

    def __init__(self):
        super().__init__()
        db_path = "employee_list_db/empdb"
        self.db = db_path

    def get_total_page(self):
        """
        This function will return total page available in the Employee List datatable
        :return: max(page_list)
        """

        self.wait.until(EC.presence_of_element_located((By.XPATH, last_page))).click()
        time.sleep(3)
        html_content = self.driver.page_source
        soup = BeautifulSoup(html_content, "lxml")
        page_list = []
        for page in soup.find_all('ul', class_='m-datatable__pager-nav'):
            for li in page.find_all('li'):
                for page_num in li.find_all('a'):
                    page_list.append(page_num.text.strip())
        self.wait.until(EC.presence_of_element_located((By.XPATH, first_page))).click()
        print("There's total {} page found".format(max(page_list)))
        return max(page_list)

    def get_employee_table_header(self):
        """
        This function will return Data table headers (Data table column names)
        :return: table_header
        """

        table_header = []
        html_content = self.driver.page_source
        soup = BeautifulSoup(html_content, "lxml")
        trs = soup.find_all('tr')
        for header in trs:
            for x in header.find_all('th'):
                for y in x.find_all('span'):
                    table_header.append(y.text.strip())
        return table_header

    def get_employee_data(self):
        html_content = self.driver.page_source
        soup = BeautifulSoup(html_content, "lxml")
        employee_data = []

        # Getting employees data available in the data table
        for table in soup.find_all('tbody'):
            for tr in table.find_all('tr'):
                emp_data = []
                for td in tr.find_all('td'):
                    for data in td.find_all('span'):
                        emp_data.append(data.text.strip())
                employee_data.append(emp_data)

        """
        Filtering data and select only active employees. This code will fetch data from current page.
        This will run in a loop for all available page in the data table. So, in another function, this code will be executed in a loop. 
        """
        data_emp = []
        for record in employee_data:
            emp_dict = {}
            if record[2].split('\n')[0] == "Active":
                emp_dict['id'] = record[0]
                emp_dict['name'] = record[1]
            if emp_dict:
                data_emp.append(emp_dict)
        return data_emp

    def employee(self):
        """
        This function will execute the get_employee_data() in a loop for all available pages and return all data in a list of dictionary
        :return: active_employee_data
        """
        my_data = []
        print("Fetching all active employees...")
        total_page = int(self.get_total_page())
        print("Getting data from page 1")
        my_data.append(self.get_employee_data())  # This will get and append data available on the first page (default page)
        # Loop will start from second page
        for page in range(0, total_page):
            self.wait.until(EC.presence_of_element_located((By.XPATH, next_page))).click()
            time.sleep(2)
            my_data.append(self.get_employee_data())
            print("Getting data from page {}".format(page + 2))

        active_employee_data = []
        for page_data in my_data:
            for emp in page_data:
                active_employee_data.append(emp)
        print("\nAll data fetched.")
        print("Employee data saving in progress...")
        with shelve.open(self.db) as e:
            e['employees'] = active_employee_data
            print("Active employees data saved in {} ".format(self.db))

        return active_employee_data


if __name__ == "__main__":
    obj = EmployeeData()
    obj.setup()
    obj.login_into_hrms()
    obj.navigate_to_employee_list_page()
    obj.employee()
    obj.teardown()
