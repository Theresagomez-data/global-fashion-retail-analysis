import sqlite3
import pandas as pd
import os

# --- Paths ---
project_dir = os.getcwd()  # should be your project root
sql_folder = os.path.join(project_dir, "sql")
output_folder = os.path.join(project_dir, "outputs")
db_path = os.path.join(project_dir, "database.db")  # SQLite DB file

# --- Connect to SQLite ---
conn = sqlite3.connect(db_path)

# --- Load CSVs into SQLite and normalize column names ---
csv_files = {
    "transactions": "data/transactions.csv",
    "products": "data/products.csv",
    "stores": "data/stores.csv"
}

for table_name, csv_path in csv_files.items():
    df = pd.read_csv(csv_path)
    
    # Replace spaces with underscores in column names
    df.columns = [c.replace(" ", "_") for c in df.columns]
    
    # Load into SQLite
    df.to_sql(table_name, conn, if_exists='replace', index=False)
    print(f"Loaded {table_name} into SQLite with normalized column names")

# --- List of SQL files to run ---
sql_files = [
    "cq1_revenue_by_country.sql",
    "cq1_revenue_by_store.sql",
    "cq2_monthly_revenue.sql",
    "cq2_monthly_by_country.sql",
    "cq3_category_performance.sql",
    "cq3_top_skus.sql",
    "cq4_payment_methods.sql",
    "cq4_avg_price.sql"
]

# --- Run each query and export to CSV ---
for sql_file in sql_files:
    sql_path = os.path.join(sql_folder, sql_file)
    
    with open(sql_path, "r") as f:
        query = f.read()
    
    # Run query
    df = pd.read_sql_query(query, conn)
    
    # Export CSV
    output_csv = os.path.join(output_folder, sql_file.replace(".sql", ".csv"))
    df.to_csv(output_csv, index=False)
    print(f"Exported {output_csv}")

# --- Close connection ---
conn.close()
print("All queries executed and CSVs exported.")