import pickle
import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import matplotlib.pyplot as plt
import imblearn
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix, roc_curve, roc_auc_score
from sklearn.preprocessing import MinMaxScaler
from sklearn.neighbors import KNeighborsClassifier
from imblearn.over_sampling import BorderlineSMOTE


with open('model.pickle', 'rb') as f:
  model2=pickle.load(f)

#print(model2.predict([[0,2,1,0.5,2,1,2,2,1,1,2,2,1,2,2,2],[0,2,1,0.5,2,1,2,2,1,1,2,2,1,2,2,2]]))

def makePrediction(arr):
  arr1=arr
  arr1[3]=arr1[3]/120
  # 0,0 no hay riesgo
  # 1, 1 riesgo
  riesgo = model2.predict([arr1,arr1])
  if riesgo[0] == 1:
      print(1)
  else:
      print(0)

arr = [0,2,1,60,2,1,2,2,1,1,2,2,1,2,2,2]
makePrediction(arr)
