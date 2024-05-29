import xgboost as xgb
from sklearn.datasets import load_diabetes
from sklearn.model_selection import train_test_split

from giza.agents.model import GizaModel


MODEL_ID = 649  # Update with your model ID
VERSION_ID = 1  # Update with your version ID

def prediction(input, model_id, version_id):
    model = GizaModel(id=model_id, version=version_id)

    (result, proof_id) = model.predict(
        input_feed={"input": input}, verifiable=True, model_category="XGB"
    )

    return result, proof_id


def execution():
    # The input data type should match the model's expected input
    input = X_test[1, :]
    print(input.shape, X_test.shape)

    (result, proof_id) = prediction(input, MODEL_ID, VERSION_ID)

    print(f"Predicted value for input {input.flatten()[0]} is {result}")

    return result, proof_id


if __name__ == "__main__":
    data = load_diabetes()
    X, y = data.data, data.target

    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42
    )
    print(type(X_test))
    _, proof_id = execution()
    print(f"Proof ID: {proof_id}")

