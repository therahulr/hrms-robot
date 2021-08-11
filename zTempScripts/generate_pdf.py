"""
Generate PDF files using fake data
Library used - pyfpdf
"""
from fpdf import FPDF
from faker import Faker
import os

pdf = FPDF()
faker = Faker()
no_of_files = 100

abs_path = 'resources\\test_data\\documents\\'
final_path = os.path.join(os.getcwd(),abs_path)
for i in range(1,no_of_files+1):

    txt = faker.paragraph(nb_sentences=30)
    filepath = final_path
    file_name = faker.first_name().lower()+".pdf"
    final_file = filepath+file_name

    pdf.add_page()
    pdf.set_font("Arial", size=15)
    pdf.cell(200, 10, txt=txt,
             ln=1, align='C')
    pdf.output(final_file)
    print(f"File {file_name} successfully created")
