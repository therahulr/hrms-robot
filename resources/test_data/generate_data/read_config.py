from configparser import ConfigParser
from pathlib import Path

filename = "test_data_config.ini"
config_file_path = Path.cwd() / filename
parser = ConfigParser()
parser.read(str(config_file_path))
sections = parser.sections()


class TestDataConfigReader:

    def emp_id_config(self):
        emp_id = {'prefix': parser.get('empid', 'employee_id_prefix'),
                  'start': parser.get('empid', 'start_num'),
                  'end': parser.get('empid', 'end_num')}
        return emp_id
