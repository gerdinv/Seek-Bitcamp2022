#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
from sklearn.cluster import AgglomerativeClustering
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn import datasets
from kmodes.kprototypes import KPrototypes
from kmodes.kmodes import KModes
from sklearn import preprocessing
import numpy as np
from sklearn.cluster import KMeans


# In[2]:


df = pd.read_csv('userdata.csv')
interests = ['Sports', 'Gaming', 'Coding', 'Outdoors', 'Movies',  'Art', 'Anime', 'Foodie',  'Music', 'Travel']


# In[3]:


for i in interests:
    df[i] = int(0)


# In[4]:


i1 = []
i2 = []
i3 = []
for i, row in df.iterrows():
    temp = (row["Describe Yourself"]).split(",")
    i1.append(temp[0].strip())
    i2.append(temp[1].strip())
    i3.append(temp[2].strip())


# In[5]:


df['Interest 1'] = i1
df['Interest 2'] = i2
df['Interest 3'] = i3
df = df.drop(columns=['Describe Yourself'])


# In[6]:


num = ['Interest 1', 'Interest 2', 'Interest 3']
for i, row in df.iterrows():
    for j in num:
        df.loc[i, row[j]] = 1


# In[28]:


temp = pd.DataFrame()
for i in interests:
    temp[i] = df[i]


# In[29]:


kmeans = KMeans(n_clusters=5, random_state=0).fit(temp)
kmeans.predict(temp)


# In[30]:


cost = []
K = range(1,30)
for num_clusters in list(K):
    model = KModes(n_clusters=num_clusters, random_state=0, n_init = 20, max_iter = 20).fit(temp)
    model.fit(temp)
    cost.append(model.cost_)


# In[31]:


plt.plot(K, cost, 'bx-')
plt.xlabel('k clusters')
plt.ylabel('Cost')
plt.title('Elbow Method For Optimal k')
plt.show()


# In[32]:


model = KModes(n_clusters=9, random_state=0, n_init = 20, max_iter = 20).fit(temp)
clusters = model.fit_predict(temp)
clusters


# In[33]:


seeks = df.copy(deep=True)
seeks.insert(0, "Cluster", clusters, True)


# In[34]:





# In[14]:


for cluster in range(0,9):
    temp = seeks.loc[seeks['Cluster'] == cluster]
    count = {}
    for i, row in temp.iterrows():
        for j in interests:
            if j in count.keys():
                count[j]+= row[j]
            else:
                count[j] = row[j]
    plt.subplots(figsize = (15,5))
    keys = list(count.keys())
    vals = [int(count[k]) for k in keys]
    sns.barplot(x=keys, y=vals).set(title="Cluster " + str(cluster))
    plt.show()


# In[15]:


# plt.subplots(figsize = (15,5))
# sns.countplot(x='Interest 1',hue=col, data = seeks)
# plt.show()


# In[40]:


dalton = [['Dalton', 'Pang', 'dspangp@gmail.com', 'Male', 'UMD', 19, 2023, 12, 'Computer Science', 'Gaming', 'Music', 'Coding']]
data = [[1,0,1,1,0,0,0,0,0,0]]


# In[42]:


model.predict(data)


# In[ ]:


pd.set_option("display.max_rows", None, "display.max_columns", None)


# In[ ]:


seeks


# In[26]:


def get_cluster(interests):
    return model.predict(interests)

