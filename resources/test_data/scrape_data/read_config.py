from configparser import ConfigParser
from pathlib import Path

filename = "env.ini"
config_file_path = Path.cwd() / filename
parser = ConfigParser()
parser.read(str(config_file_path))
sections = parser.sections()


class EnvData:
    def get_input(self):
        print("Enter the instance name to get data : ")
        section_input = input()
        if section_input in sections:
            print("Selected environment is {}".format(section_input))
            return section_input
        else:
            print("Entered invalid data. Found environments are : {}".format(sections))
            self.get_input()

    def get_env_data(self):
        print("Found environments are : {}".format(sections))
        env_section = self.get_input()
        env_data = {'url': parser.get(env_section, 'url'),
                    'username': parser.get(env_section, 'admin_user'),
                    'password': parser.get(env_section, 'admin_pass')}
        return env_data

# {'url': 'http://test.beyondhr.cloud', 'username': 'admin@admin.com', 'password': 'testadmin'}
