
import requests
import zipfile
import io
import sys
import pandas as pd


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
                    # print(df.head())
    return df

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <dataset-url>")
        sys.exit(1)
    
    dataset_url = sys.argv[1]
    df = download_dataset(dataset_url)
    print(df.head())