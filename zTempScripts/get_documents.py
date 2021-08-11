from os import listdir
from os.path import isfile, join
import random

doc_path = "E:\\automation\\hrms-robot\\resources\\test_data\\documents\\"
onlyfiles = [file for file in listdir(doc_path) if isfile(join(doc_path,file))]

document_pdf_file = random.choice(onlyfiles)
print(
    document_pdf_file
)
