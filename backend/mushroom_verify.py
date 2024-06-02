import xgboost as xgb
from sklearn.datasets import load_diabetes
from sklearn.model_selection import train_test_split

from giza.agents.model import GizaModel

import pandas as pd
import numpy as np

d = pd.read_csv("mushrooms.csv")

df = d.copy()

from sklearn.preprocessing import LabelEncoder
l = LabelEncoder()
for i in df.columns:
    df[i] = l.fit_transform(df[i])

df.corrwith(df["class"])

df = df.drop(columns="veil-type",axis=1)

x = df.drop(columns="class",axis=1).to_numpy()
y = df["class"].to_numpy()

from sklearn.model_selection import train_test_split


MODEL_ID = 650  # Update with your model ID
VERSION_ID = 4  # Update with your version ID

def prediction(input, model_id, version_id):
    model = GizaModel(id=model_id, version=version_id)
    print(input, input.shape, type(input))

    (result, proof_id) = model.predict(
        input_feed={"input": input}, verifiable=True, model_category="XGB"
    )

    return result, proof_id


def execution():
    # The input data type should match the model's expected input
    # X_test = X_test.to_numpy()
    input = X_test[1, :]

    (result, proof_id) = prediction(input, MODEL_ID, VERSION_ID)

    print(f"Predicted value for input {input.flatten()[0]} is {result}")

    return result, proof_id


if __name__ == "__main__":
    X_train,X_test,y_train,y_test = train_test_split(x,y,test_size=0.2,random_state=42)
    _, proof_id = execution()
    print(f"Proof ID: {proof_id}")