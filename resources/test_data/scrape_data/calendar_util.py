import calendar
import datetime
from calendar import monthrange
from datetime import date

from resources.test_data.scrape_data.data_dictionary import *


class Attendance:
    def __init__(self):
        self.days = days
        self.month_dict = month_dict
        self.holiday_list = holiday_list

    month = int(input("Enter month number : "))
    print("Enter one or more weekend day's number separated by comma (For default press 0 or press ENTER)")
    user_input = [x for x in input().split(',')]
    current_year = date.today().year

    def get_holidays(self):
        holiday_list = self.holiday_list
        if holiday_list[self.month]:
            holiday_date = [i for i in holiday_list[self.month]]
            return holiday_date

        else:
            holiday_date = [i for i in holiday_list[self.month]]
            return holiday_date

    def get_no_of_weekends(self):
        weekends = []
        if len(self.user_input) == 1:
            for num in self.user_input:
                if num == str(0):
                    weekends = [7]
                elif num == "":
                    weekends = [7]
                elif str(1) <= num <= str(7):
                    weekends = self.user_input
                else:
                    print("Wrong input")
        elif 1 < len(self.user_input) <= 7:  # [3,5] If a user selects more than one weekend
            if any(str(1) > val > str(7) for val in self.user_input):
                print("You cannot enter a day no greater than 7")
            else:
                weekends = self.user_input
        else:
            print("Wrong data entered. Please try again")
        return weekends

    def get_no_of_days_in_month(self):
        return monthrange(self.current_year, self.month)[1]

    def total_weekends_days(self):
        today = datetime.date.today()
        start = today.replace(day=1, month=self.month)

        last_day = calendar.monthrange(self.current_year, self.month)[1]
        end = today.replace(day=last_day, month=self.month)

        weekends = []
        wknds = self.get_no_of_weekends()
        for d in wknds:
            weekend_date = [weekend_date.strftime("%d") for weekend_date in
                            [start + datetime.timedelta(day) for day in range(0, (end - start).days + 1)] if
                            weekend_date.isoweekday() == int(d)]
            [weekends.append(int(i)) for i in weekend_date]
        weekends.sort()
        return weekends

    def working_days(self):
        count_days = [x for x in range(1, self.get_no_of_days_in_month() + 1)]
        weekend_num = self.total_weekends_days()
        holidays = self.get_holidays()
        holiday_and_weekend = list(set(weekend_num + holidays))

        total_working_day = [day for day in count_days if day not in holiday_and_weekend]

        return total_working_day
