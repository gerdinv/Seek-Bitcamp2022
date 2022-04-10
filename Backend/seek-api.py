from fastapi import FastAPI
import pandas as pd
import flask
from sqlalchemy import text
# from SeekRoommateReccomender import get_cluster
from database import getdata, addUser, addMatch
from sqlalchemy import create_engine
import json
import psycopg2
import os
import uvicorn


engine = create_engine(('cockroachdb://dalton:ugHZqyZELexQsKbY4Dq8jg@free-tier14.aws-us-east-1.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full&options=--cluster%3Dmushy-dingo-1233'))
app = FastAPI()

@app.get("/get-data")
def get_data():
    return getdata(), 200
   

@app.get("/get-cluster")
def get_cluster(first, last, n):
    with engine.connect() as conn:
        result = conn.execute(("SELECT * FROM userdata WHERE first_name <> %s AND last_name <> %s AND \"Cluster\" = %s"), (first,last,n))
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
        return ret_vals

@app.get("/get-matched")
def get_matched(first,last):
    with engine.connect() as conn:
        result = conn.execute(("SELECT * FROM matched WHERE my_name = %s AND my_name = %s"), (first,last))
        ret_vals = []
        for row in result:
            currPerson = {
                'other_first' : row.other_first,
                'other_last' : row.other_last 
            }
            ret_vals.append(currPerson)


@app.post("/signup")
def signup(userData):
    formData = json.loads(userData)
    return addUser(formData), 200

@app.post("/addMatch")
def addMatch(userData):
    formData = json.loads(userData)
    return addMatch(formData), 200
    
# def post_data():
uvicorn.run(app, host="0.0.0.0", port=8000)
