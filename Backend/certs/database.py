import psycopg2
import os
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
        result = conn.execute(text("SELECT * FROM userdata"))
    
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
            "Class Graduation Year" : row.Class_Graduation_Year,
            "Lease Term" : row.Lease_Term,
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
            "Interest 1" : row.Interest_1,
            "Interest 2" : row.Interest_2,
            "Interest 3" : row.Interest_3
            }
            print(currPerson)
            ret_vals.append(currPerson)
        
    return json.dumps(ret_vals)

getdata()