from faker import Faker
import random
import shelve
import os
import datetime

fake = Faker()

with shelve.open("mydata") as s:
    try:
        if not s['user_data']:
            s['user_data'] = {}
    finally:
        s.close()


def generate_unique_emp_id():
    with shelve.open("mydata") as data:
        try:
            db_dic = data['user_data']
            if not db_dic:
                if not db_dic["emp_id"] in db_dic:
                    db_dic["emp_id"] = []
                    employee_id = "SSPL" + str(random.randint(1, 9)) + fake.numerify(
                        text='###') + datetime.now().strftime("%S")
        finally:
            s.close()

    print(db_dic)

# if not db_dic:
#     db_dic["emp_id"] = []
#     db_dic["emp_id"].append("SSPL101")
#
# print(db_dic)
#
#
# # Checking elements from dictionary list
# def adding_unique_id_in_db(id):
#     if not id in db_dic["emp_id"]:
#         db_dic["emp_id"].append(id)
#         print("New element {0} added into db".format(id))
#     else:
#         print("Same id exists")
#
# adding_unique_id_in_db("SSPL102")
#
# print("All records are {0}".format(db_dic))
