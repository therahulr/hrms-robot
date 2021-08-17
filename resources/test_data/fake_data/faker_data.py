from faker import Faker
import random
import string
from datetime import datetime
import shelve

fake = Faker('en_IN')

"""Functions to do some data related works"""


def random_string(length):
    """TO GENERATE A RANDOM STRING BY LENGTH"""
    rand_string = ''.join(random.choice(string.ascii_uppercase) for i in range(length))
    return rand_string


"""Personal Data"""
first_name = fake.first_name()
last_name = fake.last_name()
middle_name = first_name[:3] + last_name.lower()[:3]
emailid = first_name.lower() + last_name[:2].lower() + "@beyondhr.cloud"
mobile_no = fake.numerify(text='98########')  # generates 10 digit mobile number (starts with 98)
dob = fake.date_between(start_date='-60y', end_date='-20y').strftime("%d/%m/%Y")
address = "This is a static address"  # will change to faker data when UI bug in address field will be resolved
postal_code = fake.numerify(text='######')
pan_number = random_string(4) + last_name[:1] + fake.numerify(text='####') + random_string(1)
aadhar_no = fake.numerify(text='9#####') + fake.numerify(text='######')

"""Address Data"""

address_one = fake.address()
address_two = fake.address()

"""Company and Experience Data"""

expected_date_of_joining = fake.date_this_year(before_today=False, after_today=True).strftime("%d/%m/%Y")
work_exp_year = random.randint(1, 5)
work_exp_month = random.randint(1, 11)
experience_from_date = fake.date_between(start_date='-30y', end_date='-29y').strftime("%d/%m/%Y")
experience_to_date = fake.date_between(start_date='-28y', end_date='-27y').strftime("%d/%m/%Y")
roles_responsibility = fake.paragraphs(1)
achievements = fake.sentence(nb_words=20)
promotion = fake.sentence(nb_words=5)
reason_of_leaving = fake.sentence(nb_words=30)
organization = "Organization One"

"""Salary and Bank Data"""

salary_ctc = random.randint(300000, 1000000)
account_no = fake.numerify(text='9#########')
bank_name = "Alibaba Personal Bank"
branch_name = fake.city()
micr_no = fake.numerify(text='5########')
ifsc_code = random_string(4) + fake.numerify(text='5######')

"""Qualification Data"""

board = fake.state() + " Board"
percentage = random.randint(50, 100)

"""Nominee Details"""

nominee_name = fake.first_name() + " " + fake.last_name()
nominee_addr = fake.address()
nominee_dob = fake.date_between(start_date='-60y', end_date='-20y').strftime("%d/%m/%Y")
amount_percentage = random.randint(55, 100)

"""Documents Data"""

document_name = fake.word(
    ['Educational Document', 'Professioanl Document', 'Identity Document', 'Address Proof', 'Bank Document'])
document_description = fake.texts()[0]

document_selection_path = "E:\\automation\\hrms-robot\\resources\\test_data\\documents\\hello.pdf"

"""Employee Profile"""

emp_id = random.randint(1,10)
# emp_id = "SSPL" + str(random.randint(1, 9)) + fake.numerify(text='###') + datetime.now().strftime("%S")
official_email = first_name.lower() + last_name[:2].lower() + "@beyond.com"

"""Exported Data File Name"""

create_offer_data_file = "Create_Offer_" + first_name + "_" + last_name + "_" + datetime.now().strftime(
    "%d_%b_%y__%I_%M_%S_%p") + ".txt"

ems_creation_data_file = "EMS_" + first_name + "_" + last_name + "_" + datetime.now().strftime(
    "%d_%b_%y__%I_%M_%S_%p") + ".txt"

defult_test_data_file = first_name + "_" + last_name + "_" + datetime.now().strftime(
    "%d_%b_%y__%I_%M_%S_%p") + ".txt"

"""Test Programs (This section can be removed. It is only for testing some scripts"""
