# Global Fashion Retail Analysis


## Project Overview 
Exploratory data analysis of multinational fashion retail transactions using SQL, Python, and Tableau.
The goal of this project is to analyze sales performance across countries, stores, products, and customer purchasing behavior, and to present business insights through an 
interactive Tableau dashboard.

The analysis examines revenue performance, time-based trends, product performance, and pricing patterns across multiple international markets.


## Core Questions 
This project addresses the following business questions:
	1. Which countries and stores generate the most revenue?
	2. How does revenue change over time across regions?
	3. Which product categories and SKUs drive performance?
	4. How do pricing and payment behaviors differ by country?


## Data Source 
  - Original Dataset: Global Fashion Retail Sales on Kaggle
  - Cleaned and preprocessed in Python for analysis
  - Synthetic dataset containing over 4 million simulated transactions across 35 stores in 7 countries (Transactions include multiple currencies (USD, EUR, GBP, CNY))


## Data Cleaning and Preparation Process   
  - Standardized column names using Python
  - Loaded datasets into SQLite for structured querying
  - Joined transactional, product, and store tables
  - Created aggregated analytical datasets using SQL queries
  - Exported cleaned outputs as CSV files for Tableau visualization


## SQL Analysis
	-	SQL queries were written to produce structured analytical datasets supporting each business question
	-	Aggregations include revenue totals, time trends, product performance, payment behavior, and pricing comparisons
	-	Query files are included in the repository under the sql/ directory

  
## Python Processing
	-	Python scripts automated dataset preparation and query execution
	-	Scripts normalize column names and export SQL results into analysis-ready CSV files
	-	Scripts are located in the scripts/ directory 
  - Python scripts for data cleaning and query automation:[`scripts/`](scripts/)


## Analysis & Visualization
An interactive Tableau dashboard was build to answer the four core business questions.

Charts include:
	•	Horizontal bar charts for revenue comparisons
	•	Line charts for time trend analysis
	•	Dual-axis category performance visualization
	•	Ranked bar charts for top-performing products
	•	Payment distribution comparisons
	•	Heatmap analysis of average unit pricing


## Tools Used 
	•	SQL (SQLite) — data querying and aggregation
	•	Python (Pandas) — data preparation and automation
	•	Tableau — dashboard visualization and storytelling


## Usage
  - This CSV was used for both Python analysis and Tableau dashboard visualizations  

  - The workflow mirrors a practical analytics pipeline:
      Raw CSV Files
        - Python cleaning and normalization
        - SQLite database
        - SQL analytical queries
        - Output CSV files
        - Tableau dashboard

- Python scripts automate loading datasets into SQLite and exporting query results used directly in Tableau.


## Dashboard Structure

## CQ1 — Revenue Sources

  Analysis of total revenue performance by country and store location to identify top-performing markets.

## CQ2 — Time Trends

  Monthly revenue trends highlighting seasonal patterns and regional performance changes.

## CQ3 — Product Performance

  Evaluation of category performance and identification of top-selling SKUs driving overall sales.

## CQ4 — Customer and Pricing Insights

  Comparison of payment method usage and average pricing behavior across countries.


## Key Insights

## 1. Revenue Performance

- China generates the highest total revenue, followed by the United States.
    - China’s total revenue (~538,539,256) is approximately seven times larger than the U.S. (~75,023,512), highlighting the significant scale of the Chinese market in this dataset.
      
- Store-level analysis shows that the top-performing stores are consistently located in major metropolitan areas:
    - **Germany(Deutschland)**: Store Berlin
    - **Spain(España)**: Store Madrid
    - **France**: Store Paris
    - **Portugal**: Store Lisbon
    - **United Kingdom**: Store London
    - **United States**: Store New York
    - **China(中国)**: Store Shanghai(上海)
      
- Store-level analysis shows top-performing stores are located in major metropolitan areas, which are also the most highly populated regions in each country.
  This aligns with expectations that higher population density drives higher traffic and demand, contributing to revenue concentration in these urban centers.

## 2. Time Trends

- Monthly revenue trends show clear seasonal patterns, with peaks during major holiday periods such as November–December.
- Revenue typically drops in January–February following the holiday season, then gradually increases in March.
- Most of the dramatic fluctuations are driven by China, the largest market in this dataset.
- For other countries, revenue is more consistent throughout the year, with only modest increases during the holiday period.
- These patterns highlight the importance of seasonal demand and regional market size in retail planning.

## 3. Product Performance

- Revenue is heavily concentrated in certain categories: Feminine products generate the highest total revenue (~340,685,346), while Children’s products contribute much less (~65,080,135), approximately 5.2 times smaller.
- At the SKU level, a few individual products dominate revenue. For example, Product ID 13901 alone generated ~267,312.67 in total revenue.
- These findings indicate that category-level and top-SKU performance is highly skewed, suggesting that a relatively small number of products drive the majority of sales.

## 4. Customer & Pricing Behavior

- Revenue by payment method is heavily skewed toward credit card transactions, totaling approximately 586,729,693 USD, which is about 4 times larger than revenue from cash transactions (~146,015,182 USD). This indicates a strong preference for credit card payments across all markets.
- Average unit price by country is reported in local currency. China appears higher relative to other countries across categories, while other countries show generally lower and more uniform average prices.
- These insights highlight both payment behavior and regional pricing patterns, providing actionable context for marketing, pricing strategy, and revenue optimization.


## Tableau Dashboard

Explore the interactive dashboard available here:
[Global Fashion Retail Sales Analysis](https://public.tableau.com/views/Global_Fashion_RetailAnalysis/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)￼
