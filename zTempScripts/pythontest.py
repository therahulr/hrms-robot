import shelve as sh
import inspect

u_data = sh.open("datafile")
for key in dir():
    if not inspect.ismodule(globals()[key]):
        try:
            u_data[key] = globals()[key]
        except TypeError:
            print("Error shelving: {0}".format([key]))

my_data = {
    "empid": ["SSPL101", "SSPL111", "SSPL133"],
    "emp_name": ["Rahul Raj", "Ranjan Kumar", "Roushan Kumar"]
}






