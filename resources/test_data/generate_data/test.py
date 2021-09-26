import shelve

shelve_db_path = "shelve_database/database"
with shelve.open(shelve_db_path) as d:
    for i in d.keys():
        print(i)