import os
from datetime import datetime

curr_date_time = datetime.now().strftime("%d_%b_%Y_%I_%M_%S_%p")
basefile = os.path.basename(__file__).split('.')[0]

abs_file_path = 'resources/test_data/documents/'
file_name = curr_date_time+ "data.txt"

basefile = os.path.basename(__file__).split('.')[0]


s = os.path.join(os.getcwd(),abs_file_path)

print(s)
