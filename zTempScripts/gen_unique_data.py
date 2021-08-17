import random
from faker import Faker
import shelve

fake = Faker()

names = ['A', 'B', 'C', 'D', 'E', 'F']

newcollection = ['A', 'B', 'C', 'D', 'E', 'F'] + [random.randint(1, 20)]


def name():
    u_name = random.choice(newcollection)
    return u_name


unique_data = name()
if unique_data in names:
    while True:
        new_name = name()
        if new_name in names:
            continue
        else:
            unique_data = new_name
            names.append(unique_data)
            break
else:
    names.append(unique_data)

# ----------------------------------------------------

"""CREATE A NEW DB FILE"""
s = shelve.open("mydata", writeback=True)
try:
    s['user_data'] = names
    print("db created")
finally:
    s.close()

"""RETRIEVE DATA"""
ret = shelve.open("mydata")
try:
    existing = ret["user_data"]
finally:
    ret.close()
print(existing)
