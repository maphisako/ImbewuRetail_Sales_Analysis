# Data
This folder contains full Imbewu Retail dataset as 6 csv files.

# Files
|        Files              |     Rows |    Size       |  Description        
|---------------------------|----------|---------------|-------------------------------
|dim_promotions.csv         |    4     |    ~1KB       |information about promotions made at the certain period.
|dim_customers.csv          |    3,000 |    ~170KB     |customer demographic and loyalty information.
|dim_stores.csv             |    45    |    ~5KB       |information about store locations, formats and management.
|dim_products.csv           |    48    |    ~4KB       |product information, including product categories, unit prices and unit costs
|fact_transactions.csv      |    9,164 |    ~390KB     |Contains transaction dates, customer references, store references and payment methods.
|fact_transaction_items.csv |    48,641|    ~1666KB    |individual products purchased in each transaction, including quantities, selling prices and discounts.

# About the dataset
The dataset is fully synthetic, It was handed by witle technologies as part of student assessment in data analysis bootcamp with realistic characteristics:
- 18 months of data(Jan 2024 to Jun 2025) with realistic revenue growth and decline.
  
- Loyalty tier with bronze having highest customer count.
  
- Groceries which are essentials having highest revenue.
  
- mixed payments with cash and card mostly used methods.

# Data Quality
The dataset was deliberately messy, having nulls and inconsistencies for learning purposes, 
however the following was used to deal with the identified data quality issues.
-CTEs to create temporary, cleaned versions of the tables.

-TRIM() to remove unnecessary spaces.

-INITCAP() to standardise text capitalisation.

-COALESCE() to handle missing values.

-CAST() to standardise customer ID data types.

# Loading the CSVs into Databricks
The above datasets were loaded into databricks to inspect and understand their structure.
The loaded datasets were then used as the foundation for SQL-based data preparation and revenue investigations.

# Loading the CSVs in powerbi
1.Open powerbi desktop

2.Get data, text/CSV

3.Load all the 6 CSV files

4. Set-up in ERD diagram 


