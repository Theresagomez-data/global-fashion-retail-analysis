import pandas as pd

files = ["transactions", "products", "stores"]

for file in files:
    path = f"data/{file}.csv"
    df = pd.read_csv(path)
    # Replace spaces with underscores
    df.columns = [col.replace(" ", "_") for col in df.columns]
    # Save back to the same file
    df.to_csv(path, index=False)
    print(f"{file}.csv columns normalized")