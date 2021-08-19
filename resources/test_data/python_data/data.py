from faker import Faker
import random
import string
from datetime import datetime
from pathlib import Path
import os
from fpdf import FPDF

"""
Creating Class objects
"""
fake = Faker('en_IN')
pdf = FPDF()

""" Path for documents data and others """

data_folder = Path("../documents/")

""" Functions Definition"""


def generate_sample_pdf_file():
    """
    This function will be called by another function get_pdf_document() to generate some sample pdf
    if any pdf files doesn't exists in the document folder.
    :return: None
    """
    filepath = data_folder
    for i in range(4, random.randint(8, 15)):
        txt = fake.paragraph(nb_sentences=30)
        file_name = fake.first_name().lower() + ".pdf"
        final_file = filepath / file_name

        pdf.add_page()
        pdf.set_font("Arial", size=15)
        pdf.cell(200, 10, txt=txt,
                 ln=1, align='C')
        pdf.output(final_file)
    print(f"PDF file successfully generated and stored in {filepath} folder.")


def get_pdf_document():
    """
    This function will return a random pdf document
    It will first check that the document folder exists or not. If not then this will create a new folder
    Then it will check if document folder is empty then it will generate
    some pdf files by calling generate_sample_pdf_file() function
    Then it will return any random selected document
    :return: file_to_open
    """
    file_to_open = ""
    if not os.path.isdir(data_folder):
        os.mkdir(data_folder)
        generate_sample_pdf_file()
    else:
        if len(os.listdir(data_folder)) == 0:
            generate_sample_pdf_file()
            file_to_open = data_folder / random.choice(os.listdir(data_folder))
        else:
            file_to_open = data_folder / random.choice(os.listdir(data_folder))
    return file_to_open


def random_string(length):
    """
    This function will generate random string of the specified length
    :param length:
    :return:
    """
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

document_selection_path = get_pdf_document()

"""Employee Profile"""

emp_id = random.randint(1, 10)
# emp_id = "SSPL" + str(random.randint(1, 9)) + fake.numerify(text='###') + datetime.now().strftime("%S")
official_email = first_name.lower() + last_name[:2].lower() + "@beyond.com"

"""Exported text test data directory and filename"""
offer_desk_test_data_export_dir = Path("../../../results/exported_test_data/offer_desk")
create_offer_exported_data = "Create_Offer_" + first_name + "_" + last_name + "_" + datetime.now().strftime(
    "%d_%b_%y__%I_%M_%S_%p") + ".txt"

ems_test_data_export_dir = Path("../../../results/exported_test_data/ems")
ems_exported_data = "EMS_" + first_name + "_" + last_name + "_" + datetime.now().strftime(
                "%d_%b_%y__%I_%M_%S_%p") + ".txt"

default_exported_data = Path("../../../results/exported_test_data") / (
            first_name + "_" + last_name + "_" + datetime.now().strftime(
                "%d_%b_%y__%I_%M_%S_%p") + ".txt")

"""Test Programs (This section can be removed. It is only for testing some scripts"""
print(ems_test_data_export_dir/ems_exported_data)
