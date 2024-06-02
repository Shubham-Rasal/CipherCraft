from sklearn.model_selection import train_test_split
from xgboost import XGBClassifier
from sklearn.metrics import classification_report,accuracy_score
import pandas as pd
import numpy as np
import sys

import requests
import zipfile
import io
import pandas as pd

from sklearn.preprocessing import LabelEncoder

# Define the URL for the dataset
# url = 'https://gateway.lighthouse.storage/ipfs/QmSiVp36NpUQaJwSWv2wHDB1FofF8nxAkeyhQXom3LikVf'

# Step 1: Fetch the dataset zip file
def download_dataset(url):
    response = requests.get(url)
    if response.status_code == 200:
        # Step 2: Unzip the file in memory
        with zipfile.ZipFile(io.BytesIO(response.content)) as zip_ref:
            # List all files in the zip archive
            zip_contents = zip_ref.namelist()
            # Find the CSV file within the extracted contents
            csv_file_name = next((f for f in zip_contents if f.endswith('.csv')), None)

            if csv_file_name:
                # Extract the CSV file content
                with zip_ref.open(csv_file_name) as csv_file:
                    # Step 3: Read the CSV file into a DataFrame
                    df = pd.read_csv(csv_file)
                    print(df.head())
    return df


def train(df):

# d = pd.read_csv("mushrooms.csv")

# print(d);

# df = d.copy()


    l = LabelEncoder()
    for i in df.columns:
        df[i] = l.fit_transform(df[i])

    df.corrwith(df["class"])

    df = df.drop(columns="veil-type",axis=1)

    x = df.drop(columns="class",axis=1).to_numpy()
    y = df["class"].to_numpy()

    x_train,x_test,y_train,y_test = train_test_split(x,y,test_size=0.2,random_state=42)
    print(x_train.shape,x_test.shape,y_train.shape,y_test.shape)

    model = XGBClassifier()
    model.fit(x_train,y_train)
    y_pred = model.predict(x_test)

    print(classification_report(y_test,y_pred))
    print("accuracy is (%) =",accuracy_score(y_test,y_pred)*100)

    from giza.zkcook import serialize_model
    serialize_model(model, "xgb_mushrooms.json")

    with open("xgb_mushrooms.json", "r") as f:
        model_json_content = f.read()
        print(model_json_content)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <dataset-url>")
        sys.exit(1)
    
    dataset_url = sys.argv[1]
    df = download_dataset(dataset_url)
    print(df.head())
    train(df)