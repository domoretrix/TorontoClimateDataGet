import pandas as pd
import os

files = os.listdir()
csv_files = []
for file in files:
    if file.endswith('.csv'):
        csv_files.append(file)
        
if csv_files:
    df_coletion=[]
    for file in csv_files:
        df= pd.read_csv(file)
        df_coletion.append( df )
    dfs=pd.concat(df_coletion, ignore_index=True)
    dfs.to_csv('all_years.csv')
