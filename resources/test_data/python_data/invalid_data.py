from faker import Faker
import random
import string

fake = Faker()

""" Person Name Data"""


def invalid_name_numeric():
    """
        This function will return an invalid numeric name. e.i - 7834789848
        :return:
    """
    pass


def invalid_name_alphanumeric():
    """
       This function will return an invalid name which contains only numbers. e.i - 7834789848
       :return:
    """
    pass


def invalid_name_white_spaces():
    """
       This function will return an invalid name which contains only numbers. e.i - 7834789848
       :return:
    """
    pass


def invalid_name_symbolic():
    """
       This function will return an invalid name which only symbols and length will be from 10-18
       :return:
    """
    return "".join(random.sample(string.punctuation,random.randint(10,18)))


def invalid_name_mixed_symbol():
    pass


def invalid_name_spacing():
    pass


""" Variables """
valid_first_name = fake.first_name()
valid_last_name = fake.first_name()

numeric_name = str(random.randint(123456789, 987654321))
alphanumeric_name = fake.first_name
whitespace_name = " " * random.randint(10, 20)
symbolic_name = invalid_name_symbolic()
mixed_num_symbol_letter_name = fake.first_name
blank_name = ""

print(whitespace_name)
print(invalid_name_symbolic())
print(len(invalid_name_symbolic()))
