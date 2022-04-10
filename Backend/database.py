from re import S
import psycopg2
import os
import pandas as pd 
from sqlalchemy import create_engine
import os
from sqlalchemy import text
import json

# data = pd.read_csv('out.csv')

engine = create_engine(('cockroachdb://dalton:ugHZqyZELexQsKbY4Dq8jg@free-tier14.aws-us-east-1.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full&options=--cluster%3Dmushy-dingo-1233'))

# data.to_sql('userdata', engine)

# with engine.connect() as conn:
#     conn.execute(text("DROP TABLE userdata"))
def getdata():
    with engine.connect() as conn:
        result = conn.execute(("SELECT * FROM userdata"))
    
        ret_vals = []
        for row in result:
            currPerson = {
            "cluster": row.Cluster,
            "first_name": row.first_name,
            "last_name" : row.last_name,
            "email" : row.email,
            "gender" : row.gender,
            "University" : row.university,
            "Age" : row.Age,
            "Class_Graduation_Year" : row.Class_Graduation_Year,
            "Lease_Term" : row.Lease_Term,
            "Major" : row.Major,
            "Sports" : row.Sports,
            "Gaming" : row.Gaming,
            "Coding" : row.Coding,
            "Outdoors" : row.Outdoors,
            "Movies" : row.Movies,
            "Art" : row.Art,
            "Anime" : row.Anime,
            "Foodie" : row.Foodie,
            "Music" : row.Music,
            "Travel" : row.Travel,
            "Interest_1" : row.Interest_1,
            "Interest_2" : row.Interest_2,
            "Interest_3" : row.Interest_3
            }
            ret_vals.append(currPerson)
        
    return json.dumps(ret_vals)

def test():
    with engine.connect() as conn:
        f = 'Cash'
        l = 'Foxley'
        n= 1
        result = conn.execute(("SELECT * FROM userdata WHERE first_name = %s AND last_name = %s AND \"Cluster\" = %s"), (f,l,n))
        for i in result:
            print(i.first_name)
    
def addUser(inputData):
    with engine.connect() as conn:
        conn.execute(text("INSERT INTO userdata (\"Cluster\", first_name, last_name, email, gender, university, \
                            \"Age\", \"Class_Graduation_Year\", \"Lease_Term\", \
                            \"Major\", \"Sports\", \"Gaming\", \"Coding\", \"Outdoors\", \
                            \"Movies\", \"Art\", \"Anime\", \"Foodie\", \"Music\", \"Travel\", \
                            \"Interest_1\", \"Interest_2\", \"Interest_3\") \
                            Values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", 
                            (1, inputData['first_name'], inputData['last_name'], inputData['email'], inputData['gender'], inputData['University'], \
                            inputData['Age'], inputData['Class_Graduation_Year'], inputData['Lease_Term'], inputData['Major'], inputData['Sports'], inputData['Gaming'], inputData['Coding'], \
                            inputData['Outdoors'], inputData['Movies'], inputData['Art'], inputData['Anime'], inputData['Foodie'], inputData['Music'], inputData['Travel'], \
                            inputData['Interest_1'], inputData['Interest_2'], inputData['Interest_3'])
                        )) 

def addMatch(inputData):
    with engine.connect() as conn:
        conn.execute(text("INSERT INTO matched (my_first, my_last, other_first, \
        other_last) \
        Values (%s, %s, %s, %s)", (inputData['my_first'], inputData['my_last'], inputData['other_first'], inputData['other_last'])
    ))
# with engine.connect() as conn:
#     conn.execute(''' CREATE TABLE matched (
#             my_first String,
#             my_last String,
#             other_first String,
#             other_last String
#     )
#     ''')
# print(test())