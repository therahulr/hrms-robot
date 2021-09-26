import random
import shelve

from resources.test_data.generate_data.data_dictionary import *
from resources.test_data.generate_data.read_config import TestDataConfigReader

shelve_db_path = "shelve_database/database"
conf_read = TestDataConfigReader()


# def get_employee_id():
#     """
#     This function will generate Unique Employee ID and further save it into local db for unique
#     :return: new_empid
#     """
#     conf = conf_read.emp_id_config()
#     prefix = conf['prefix']
#     start = int(conf['start'])
#     end = int(conf['end'])
#
#     def gen_id():
#         emp_id = prefix + str(random.randint(start, end))
#         return emp_id
#
#     def empid_db():
#         with shelve.open(shelve_db_path) as d:
#             return d["emp_id"]
#
#     def matching_empid():
#         new_empid = gen_id()
#         empdb = empid_db()
#         if empdb:
#             empid_list = set(empdb)
#             while True:
#                 if new_empid in empid_list:
#                     new_empid = gen_id()
#                     continue
#                 else:
#                     break
#             return new_empid
#         else:
#             return new_empid
#
#     def get_new_id():
#         new_id = matching_empid()
#         with shelve.open(shelve_db_path) as d:
#             items = d["emp_id"]
#             items.append(new_id)
#             d["emp_id"] = items
#         return new_id
#
#     return get_new_id()


def get_gender():
    return random.choice(gender_data)


def get_category():
    return random.choice(category)


def get_marital_status():
    return random.choice(marital)


def get_designation():
    return random.choice(designation)


def get_department():
    return random.choice(department)


def get_location():
    return random.choice(location)


def get_employee_type():
    return random.choice(employee_type)


def get_reportee_manager():
    return random.choice(reportee_manager)


def get_country():
    return random.choice(country)


def get_employee_skill():
    return random.choice(employee_skill)


def get_employee_grade():
    return random.choice(grade)


def get_state():
    return random.choice(state)

