import calendar
import datetime
from calendar import monthrange
from datetime import date


class Attendance:

    def __init__(self):
        self.days = {
            1: "monthday",
            2: "Tuesday",
            3: "Wednesday",
            4: "Thursday",
            5: "Friday",
            6: "Saturday",
            7: "Sunday",
        }
        self.month_dict = {"1": "January",
                           "2": "Febraury",
                           "3": "March",
                           "4": "Apr",
                           "5": "May",
                           "6": "June",
                           "7": "July",
                           "8": "August",
                           "9": "September",
                           "10": "October",
                           "11": "November",
                           "12": "December",
                           }

    month = int(input("Enter month number : "))
    print("Enter one or more weekend day's number separated by comma (For default press 0 or press ENTER)")
    user_input = [x for x in input().split(',')]

    def get_holidays(self):
        holiday_list = {1: [1, 26],
                        2: [10],
                        3: [11, 29],
                        4: [],
                        5: [14],
                        6: [],
                        7: [],
                        8: [30],
                        9: [],
                        10: [2, 15],
                        11: [4, 5],
                        12: [25], }
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
                    print("Wrong data entered")

        elif 1 < len(self.user_input) <= 7:  # [3,5] If a user selects more than one weekend
            if any(str(1) > val > str(7) for val in self.user_input):
                print("You cannot enter a day number greater than 7")
            else:
                weekends = self.user_input

        else:
            print("Wrong data entered. Please try again")

        return weekends

    current_year = date.today().year

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
